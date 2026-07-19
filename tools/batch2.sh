#!/bin/bash
# Fix pass — edits via --ref on the originals. No alcohol anywhere (unconfirmed).
cd "$(dirname "$0")/.."

node tools/gen_image.mjs "photorealistic editorial photography, cozy TINY Italian garden-cafe dining room with NO people, empty and ready for service: only about eight to ten mixed wooden tables with sturdy oak chairs, white lattice trellis room dividers covered in faux grape ivy, bright red painted doorway trim, tan sponge-painted walls, olive and plum checkerboard tile floor, warm intimate lamp light, paper menus and salt shakers set on tables, NO wine glasses, NO wine bottles, NO alcohol anywhere, glass bottles of cola in a glass-front cooler, homey grandma's-garden charm" --out assets/interior-lattice.png --ar 4:3

node tools/gen_image.mjs "edit this photo: remove the wine glass and any wine from the top right corner entirely, leave the wooden table and window light; everything else stays exactly the same" --ref assets/lasagna.png --out assets/lasagna2.png --ar 4:3

node tools/gen_image.mjs "edit this photo: replace the shelves of wine bottles in the background with shelves of unlabeled mason jars of red tomato sauce and small potted herbs; no wine or alcohol anywhere; keep the fettuccine alfredo, the Coca-Cola bottle, the glass of cola, and the checkered placemat exactly the same" --ref assets/alfredo.png --out assets/alfredo2.png --ar 4:3

node tools/gen_image.mjs "edit this photo: make all the jars of red sauce plain unlabeled glass mason jars with no labels at all, remove the second person in the background, and crop attention so no part of any face is visible; keep the hands kneading dough, the flour, the breads and breadsticks cooling exactly the same" --ref assets/scratch-kitchen.png --out assets/scratch-kitchen2.png --ar 4:3

node tools/gen_image.mjs "edit this photo: make the small sign in the window read exactly: YES WE'RE OPEN in neat lettering; everything else stays exactly the same" --ref assets/hero-awning.png --pro --out assets/hero-awning2.png --ar 16:9

echo BATCH2 DONE
ls -la assets/
