---
layout: default
---
<h1>Building a Game using DOM and Javascript</h1>

_Crowds of hungry Moles are attacking! In this tutorial, we build a Hit-the-Mole game, using just DOM
and javascript. Follow us along with this tutorial and you'll have you first game done in no time!_


<h3>The game</h3>
You can try out the game here: <a href="Link to Amazon s3">http://daniel-beck.org/hit-the-mole</a>.

Let's jump right in by looking at the HTML structure of the game.

<h3>The game structure</h3>
The game is made of several images layered are on top of each other: The background image holds the background picture (the turf and the sky). The mole hole background is placed over the background image. The mole is display on top of the mole hole background. The mole hides behind the hile foreground. Then the mole was hit, stars are shown at the top of the pile of layered.

Here is an image.

The HTML reflects the layered structure described above:

```html
<html>
  <body>
     <img id="background" src="images/background.png" alt="background"/>
        <div id="hole1" class="hole"></div>
        <div id="hole2" class="hole"/></div>
        <div id="hole3" class="hole"/></div>
        <div id="hole4" class="hole"/></div>
        <div id="hole5" class="hole"/></div>
        <div id="holeBackground1" class="holeBackground"/></div>
        <div id="holeBackground2" class="holeBackground"/></div>
        <div id="holeBackground3" class="holeBackground"/></div>
        <div id="holeBackground4" class="holeBackground"/></div>
        <div id="holeBackground5" class="holeBackground"/></div>
        <div id="mole"></div>
        <div id="moleSprite"></div>
        <div id="stars"></div>
  </body>
  </div>
</html>
```
