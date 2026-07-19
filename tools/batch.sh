#!/bin/bash
# Sandra D's imagery batch — grounded in ref/photos (real storefront/plating).
# NO wine/beer glasses anywhere (alcohol status unconfirmed). No people facing camera.
cd "$(dirname "$0")/.."

node tools/gen_image.mjs "photorealistic editorial photography, golden-hour evening exterior of a small-town Italian restaurant storefront: century-old two-story tan masonry building, bright red scalloped fabric awning with 'Sandra D's' painted in white serif script, teal green wood wainscot panels below big windows, warm light glowing from inside, hand-painted garden mural of potted topiary beside a dark wood door, small-town Indiana main street sidewalk, no people facing camera" --ref ref/photos/e0.jpg --pro --out assets/hero-awning.png --ar 16:9

node tools/gen_image.mjs "photorealistic editorial photography, cozy tiny Italian garden-cafe dining room, about ten mixed wooden tables with sturdy oak chairs, white lattice trellis room dividers covered in faux grape ivy, bright red painted doorway trim, tan sponge-painted walls, olive and plum checkerboard tile floor, warm intimate evening light, paper menus and salt shakers on tables, homey grandma's-garden charm not fine dining, no people facing camera" --out assets/interior-lattice.png --ar 4:3

node tools/gen_image.mjs "photorealistic food photography, rustic homemade beef and sausage lasagna served bubbling in its small aluminum baking pan on a wooden table, melted cheese browned on top, red sauce, fork resting beside, warm natural light, unfussy family-restaurant plating, red and white checkered paper napkin, no people" --out assets/lasagna.png --ar 4:3

node tools/gen_image.mjs "photorealistic food photography, creamy orange-red tomato soup served in a white paper cup topped with homemade croutons, one glossy butter-brushed breadstick beside it, basket lined with red and white checkered paper, dark wooden table, warm natural light, no people" --ref ref/photos/e3.jpg --out assets/soup-breadstick.png --ar 4:3

node tools/gen_image.mjs "photorealistic food photography, fettuccine alfredo with cream sauce and shaved parmesan in a shallow bowl, steam rising, glass bottle of cola beside it on a red and white checkered paper placemat, wooden table, cozy warm light, homey Italian cafe, no people, no wine" --out assets/alfredo.png --ar 4:3

node tools/gen_image.mjs "photorealistic editorial photography, close-up of a chef's hands in a small restaurant kitchen kneading fresh bread dough on a flour-dusted wooden counter, homemade loaves and breadsticks cooling on racks behind, jars of red sauce, warm morning light, scratch-cooking honesty, face not visible, no people facing camera" --out assets/scratch-kitchen.png --ar 4:3

node tools/gen_image.mjs "photorealistic food photography, homemade tiramisu square dusted with cocoa on a small white plate with a fork, and a warm bread pudding with sauce on a second plate behind it, dark wooden table, red and white checkered accent, soft warm evening light, unfussy homemade dessert plating, no people" --out assets/desserts.png --ar 4:3

echo BATCH DONE
ls -la assets/
