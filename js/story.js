/* Sandra D's — scroll-story engine. Vanilla JS, no libraries.
   Everything here degrades gracefully: without JS the page is fully
   readable; with prefers-reduced-motion, animations are skipped. */
(function () {
  'use strict';
  var reduced = window.matchMedia('(prefers-reduced-motion: reduce)').matches;

  /* --- scroll progress bar + dot nav highlighting --- */
  var bar = document.querySelector('#progress b');
  var dots = Array.prototype.slice.call(document.querySelectorAll('#dots a'));
  var chapters = dots.map(function (a) { return document.querySelector(a.getAttribute('href')); });
  var timeline = document.getElementById('timeline');

  function onScroll() {
    var doc = document.documentElement;
    var max = doc.scrollHeight - window.innerHeight;
    if (bar) bar.style.width = (max > 0 ? (window.scrollY / max) * 100 : 0) + '%';

    var current = 0;
    chapters.forEach(function (sec, i) {
      if (sec && sec.getBoundingClientRect().top <= window.innerHeight * 0.4) current = i;
    });
    dots.forEach(function (a, i) { a.classList.toggle('on', i === current); });

    /* timeline line draws as the section passes through the viewport */
    if (timeline) {
      var r = timeline.getBoundingClientRect();
      var p = (window.innerHeight * 0.85 - r.top) / r.height;
      timeline.style.setProperty('--draw', Math.max(0, Math.min(1, p)).toFixed(3));
    }
  }
  window.addEventListener('scroll', onScroll, { passive: true });
  onScroll();

  /* --- reveal-on-scroll --- */
  var reveals = document.querySelectorAll('.reveal');
  if (!reduced && 'IntersectionObserver' in window) {
    var io = new IntersectionObserver(function (entries) {
      entries.forEach(function (e) {
        if (e.isIntersecting) { e.target.classList.add('in'); io.unobserve(e.target); }
      });
    }, { threshold: 0.15, rootMargin: '0px 0px -40px 0px' });
    reveals.forEach(function (el) { io.observe(el); });
  } else {
    reveals.forEach(function (el) { el.classList.add('in'); });
  }

  /* --- count-up stats --- */
  var counters = document.querySelectorAll('.count');
  function animateCount(el) {
    var to = parseFloat(el.getAttribute('data-to'));
    var dec = parseInt(el.getAttribute('data-dec') || '0', 10);
    var t0 = null;
    function step(t) {
      if (!t0) t0 = t;
      var p = Math.min(1, (t - t0) / 1200);
      p = 1 - Math.pow(1 - p, 3); /* ease-out */
      el.textContent = (to * p).toFixed(dec);
      if (p < 1) requestAnimationFrame(step);
    }
    requestAnimationFrame(step);
  }
  if (!reduced && 'IntersectionObserver' in window) {
    var cio = new IntersectionObserver(function (entries) {
      entries.forEach(function (e) {
        if (e.isIntersecting) { animateCount(e.target); cio.unobserve(e.target); }
      });
    }, { threshold: 0.6 });
    counters.forEach(function (el) { cio.observe(el); });
  }

  /* --- live hours: today row + open-now badge --- */
  /* Hours per public listings (consensus, 2026): Thu 11-14, Fri/Sat 11-19, Sun 11-14 */
  var HOURS = { 0: [11, 14], 4: [11, 14], 5: [11, 19], 6: [11, 19] };
  var now = new Date(), day = now.getDay(), hr = now.getHours() + now.getMinutes() / 60;
  var row = document.querySelector('.hours tr[data-day="' + day + '"]');
  if (row) row.classList.add('today');
  var badge = document.getElementById('openbadge');
  if (badge) {
    var span = HOURS[day];
    if (span && hr >= span[0] && hr < span[1]) {
      badge.textContent = 'Open now — until ' + (span[1] > 12 ? span[1] - 12 + ' PM' : span[1] + ' AM') + ' today';
      badge.className = 'open-badge yes';
    } else {
      badge.textContent = 'Closed right now — see the week below';
      badge.className = 'open-badge no';
    }
  }
})();
