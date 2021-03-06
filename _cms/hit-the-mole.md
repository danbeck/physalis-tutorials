---
layout: default
---
<h1>Building a Game using DOM and Javascript</h1>

_Crowds of hungry Moles are attacking! In this tutorial, we build a Hit-the-Mole game for mobile devices, using just DOM and javascript. Follow us along with this tutorial and you'll have your first game done in no time!_

[TOC]

<h3>The game</h3>
You can try out the game here: <a href="Link to Amazon s3">http://daniel-beck.org/hit-the-mole</a>.

Let's jump right in by looking at the HTML structure of the game.

<h3>The game structure</h3>
The game is made of several images layered are on top of each other:

 <img alt="How the helloworld app looks like in the browser" src="http://physalis-cms.s3.amazonaws.com/images/hit-the-mole/layers.png")">

Like shown in the picture above, the background layer is at the bottom of the pile. It holds a picture containing the turf and the sky. The mole holes are made of two images: the background (which is black) and the foreground, so that the mole can appear in between. Finally, when the mole was hit by the player, stars are shown on top.

The layers 
The layers described above corre out game with the  the following HTML, which will form the ground structure of our game: 

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <!-- Makes sure the game looks good when displayed on a handheld -->
    <meta name="viewport" content="width=device-width">
    <title>Hit the Mole!</title>
    <link href="css/hitTheMole.css" rel="stylesheet"/>
    <script src="js/hitTheMole.js"></script>
  </head>
  <body>
    <img id="background" src="images/background.png" alt="background"/>
    <div id="holeBackground1" class="holeBackground"/></div>
    <div id="hole1" class="hole"></div>
    <div id="holeBackground2" class="holeBackground"/></div>
    <div id="hole2" class="hole"/></div>
    <div id="holeBackground3" class="holeBackground"/></div>
    <div id="hole3" class="hole"/></di>v
    <div id="holeBackground4" class="holeBackground"/></div>
    <div id="hole4" class="hole"/></div>
    <div id="holeBackground5" class="holeBackground"/></div>
    <div id="hole5" class="hole"/></div>
    <div id="mole"></div>
    <div id="moleSprite"></div>
    <div id="stars"></div>
  </body>
  </div>
</html>
```

The javascript file _js/hitTheMole.js_ will contain the game's logic. We left it empty for now. 
We first begin by styling the game with CSS.

<h3>Positioning the game elements</h3>
Unlike webpages, where elements are usualy positioned relatively, in games we want 
*1)pi xel perfect positioning. 
