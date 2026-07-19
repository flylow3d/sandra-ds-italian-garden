# Local pixel surgery (Gemini credits exhausted).
# 1) hero: clone window-glass patch over the garbled "YES...OPEN" sign
# 2) interior: defocus-melt the menu-card text regions (wrong name hallucinated)
Add-Type -AssemblyName System.Drawing

function Blur-Region($g, $bmp, $x, $y, $w, $h, $factor) {
  $small = New-Object System.Drawing.Bitmap([Math]::Max(1,[int]($w/$factor)), [Math]::Max(1,[int]($h/$factor)))
  $gs = [System.Drawing.Graphics]::FromImage($small)
  $gs.InterpolationMode = 'HighQualityBilinear'
  $gs.DrawImage($bmp, (New-Object System.Drawing.Rectangle(0,0,$small.Width,$small.Height)), $x, $y, $w, $h, 'Pixel')
  $gs.Dispose()
  $g.InterpolationMode = 'HighQualityBilinear'
  $g.DrawImage($small, (New-Object System.Drawing.Rectangle($x,$y,$w,$h)), 0, 0, $small.Width, $small.Height, 'Pixel')
  $small.Dispose()
}

$root = "C:\Users\flylo\Documents\Sandra Ds Italian Garden\assets"

# --- hero: cover the window sign (x 765-835, y 480-550) with glass from its left ---
$src = [System.Drawing.Image]::FromFile("$root\hero-awning2.png")
$bmp = New-Object System.Drawing.Bitmap($src); $src.Dispose()
$g = [System.Drawing.Graphics]::FromImage($bmp)
# clone-stamp: copy 72x74 window-glass patch from (688,478) over the sign at (763,478)
$g.DrawImage($bmp, (New-Object System.Drawing.Rectangle(763,478,74,76)), 688, 478, 74, 76, 'Pixel')
# soften the seam
Blur-Region $g $bmp 758 474 86 84 3
$g.Dispose()
$bmp.Save("$root\hero-final.png", [System.Drawing.Imaging.ImageFormat]::Png)
$bmp.Dispose()
Write-Host "hero-final.png written"

# --- interior: melt menu-card text + chalkboard scribbles ---
$src2 = [System.Drawing.Image]::FromFile("$root\interior-lattice.png")
$bmp2 = New-Object System.Drawing.Bitmap($src2); $src2.Dispose()
$g2 = [System.Drawing.Graphics]::FromImage($bmp2)
# left foreground card
Blur-Region $g2 $bmp2 200 520 105 115 12
# right foreground card
Blur-Region $g2 $bmp2 990 550 110 130 12
# mid-table small cards
Blur-Region $g2 $bmp2 355 385 65 70 10
Blur-Region $g2 $bmp2 420 390 55 62 10
Blur-Region $g2 $bmp2 725 395 40 68 10
Blur-Region $g2 $bmp2 785 420 62 75 10
# chalkboards (decorative melt)
Blur-Region $g2 $bmp2 520 200 75 90 8
Blur-Region $g2 $bmp2 598 196 58 80 8
$g2.Dispose()
$bmp2.Save("$root\interior-final.png", [System.Drawing.Imaging.ImageFormat]::Png)
$bmp2.Dispose()
Write-Host "interior-final.png written"
