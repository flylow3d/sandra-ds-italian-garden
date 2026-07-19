# Sandra D's Italian Garden — spec build (It's Already Done Web Co.)

**Concept/demo website built on spec — the owners have NOT seen or approved
anything here.** Built 2026-07-19 from public sources. Every page carries the
standard concept-site footer disclaimer. Playbook:
`C:\Users\flylo\Documents\Website Business\PLAYBOOK-building-client-sites.md`.

## The business (verified facts, sources in research report)

- **Sandra D's Italian Garden** — 1330 S Main St, Auburn, IN 46706 ·
  (260) 927-7282. (Older name on parking-lot sign: "Sandra D's Garden Cafe.")
- Owners & entire staff: **Bentley & Sandy Dillinger**. Sandy runs the front,
  Bentley (Ivy Tech culinary degree; head chef at Greenhurst Country Club
  1990–1999, where they met) cooks. Opened **July 2001** → **25 years, July 2026**.
- 30 seats / ~10 tables in a century-old former appliance-store building
  (once a grocery + home of Auburn Mayor Lodie Potter).
- **#1 of 57 Auburn restaurants on Tripadvisor** (4.7, 173 reviews, Travelers'
  Choice); Google ~4.8 (330); Yelp 4.5 (69). Stop 31 on the Indiana Foodways
  Alliance Cultural Cuisine Trail.
- Story beats: went all-Italian 2007 (own bread/sauces/dressings from then on);
  2014 flood closed them 4 months ("We thought we were finished" — customers
  talked them into reopening); COVID carryout 2020 (a customer bought $500 of
  gift certificates); "Soup for the Soul" monthly charity soup nights since
  Oct 2018 — over $34,000 raised for local charities **as of 2021**.
- No walk-in cooler or freezer — ingredients bought fresh, menu rotates.
- **Hours (current consensus, multiple 2025–2026 sources):** Mon–Wed closed ·
  Thu 11–2 (lunch only) · Fri–Sat 11–7 · Sun 11–2. Site says "check Facebook."
- Facebook (only live channel): https://www.facebook.com/sandradsitaliangarden/
  No Instagram. Old domain sandradsitaliangarden.com is DEAD/parked-for-sale
  (pitch hook!). NetWaiter page exists but live status unverified — do not link
  as "order online."
- Takeout yes, delivery no. Credit cards accepted. Wheelchair accessible.
  Free customer lot + street parking. Vegetarian-friendly, GF options listed
  on TA.

## WORDING RULES — the site must NOT assert

1. **NO PRICES.** The only priced menu photo is c. 2019–2020 (pre-inflation).
   Site lists dishes/descriptions only, "call for today's menu & prices"
   (fits their daily-fresh, no-freezer story). Rugiono's precedent.
2. **Reservations conflict** (2021 article says stopped; TA/MenuPix say yes).
   Canon copy: "Thirty seats. Come early, or call ahead — (260) 927-7282."
3. Alcohol: say nothing, or at most nothing. (Sources conflict beer/wine vs
   full bar.) Currently NOT mentioned on the site.
4. Don't link NetWaiter / claim online ordering.
5. "All ingredients from local farmers" — 2017 self-claim, don't repeat.
   "DeKalb County's only Five Star Restaurant" — 2014 marketing, don't repeat.
6. Anniversary: say "25 years" / "since July 2001" — not the exact July 27 date
   (single-sourced).
7. Soup for the Soul: "has raised over $34,000" phrased with as-of care
   (figure is Aug 2021); last confirmed event Dec 2024 — frame as an ongoing
   tradition, not a scheduled current event.
8. Don't publish sandradillinger@yahoo.com (personal email from a tourism
   listing). Contact = phone + Facebook.
9. No outdoor-seating claim (thin sourcing). No breakfast (dropped years ago).
10. Menu spellings: I normalized "Lazagna" → "Lasagna" on the demo (owner can
    ask for their quirk spelling back).
11. All review quotes verbatim from public reviews, lightly attributed
    (first name/handle + platform).

## Menu content used (dishes real, from menu photo c.2019 + articles + reviews)

Appetizers ("What Not"): housemade breadsticks w/ gravy, Bruschetta Napoli,
grilled asparagus, Italian baked mushrooms, ratatouille, signature flatbread
pizza, cream of asparagus w/ prosciutto. Salads/sandwiches: gourmet house
salad, grilled romaine, crispy pecan salad, Bentley's Smother Burger, D's
Kentucky Hot Brown, Bentley's "The Boss" grilled cheese, Italian club.
Mains: family-recipe lasagna, spaghetti & meatballs, baked mostaccioli, wild
mushroom & spinach lasagna, butternut squash ravioli, carbonara, gamberetti,
fettuccine alfredo, ribeye, grilled polenta, Friday seafood lasagna (sells
out), chicken crepes. Desserts: tiramisu, bread pudding. Glass-bottle Cokes.
"Gravy" = their word for red sauce — kept, with a one-line explainer.

## Design (structure experiment — deliberately NOT the standard skeleton)

- **Structure: one-page scroll-driven story** ("an evening at Sandra D's"),
  chaptered as courses. No sticky header — floating right-side dot nav styled
  as a course list + a thin scroll progress bar. Full-viewport chapters,
  sticky-pinned scenes, IntersectionObserver reveals, hero letter stagger,
  self-drawing 25-year timeline, count-up stat numbers. All vanilla CSS/JS,
  `prefers-reduced-motion` disables everything.
- **Personality: "garden trattoria scroll-story."** Signature motifs from
  their real storefront: **red scalloped awning edge** (CSS scallops used as
  section dividers), **white lattice trellis + ivy** (SVG pattern), teal
  wainscot panels, olive/plum checkerboard floor accent.
- Palette: awning red #c0392b, storefront teal #2c6e63, cream paper #faf6ee,
  olive + plum checker accents, gold "1330" accent.
- Fonts: **Gloock** (display didone) + **Kaushan Script** (awning-script
  accents) + **Figtree** (body).
- Imagery: Gemini-generated, grounded in ref/photos (gitignored): red
  scalloped awning exterior, lattice-and-ivy homey interior (NOT the
  booth/tin-ceiling photo — that's a different restaurant), rustic plating
  (checkered basket paper, paper soup cups, aluminum pans).

## Deploy

Repo `flylow3d/sandra-ds-italian-garden` → GitHub Pages main root.
Relative links only. GoatCounter analytics on every page.
