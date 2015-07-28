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
The HTML structure of the game looks as follows:

```html
<html>
<div id="background">
</div>
</html>
```

The #background div holds the background picture: the turf and the mole holes.
The #points div shows the player's score.
The #mole div contains the animated mole sprite. We will use on PNG file containing 8 different sprites to create the animation:



We install the click file to a USB connected phone by using the command line. Make sure the developer mode is enabled!
 You can check this in the settings menu: Settings > About Phone > Developer Mode.

Install the phablet-tools and create a ssh public key. This is needed the phablet-shell uses ssh to communicate 
with the device . 

```bash
sudo apt-get install phablet-tools
ssh-keygen
```

Push the click file to your phone as follows:

```bash
adb push io.cordova.hellocordova_0.0.1_armhf.click /home/phablet/Downloads/
```
		
Then start the phablet-shell to login on the ubuntu phone.

```bash
phablet-shell
```	

From this shell, you can install the click file:

```bash
phablet@@ubuntu-phablet:~# pkcon install-local --allow-untrusted \
Downloads/io.cordova.hellocordova_0.0.1_armhf.click 
```

We are done. The app should now appear in your list of installed apps. Start the app and a blinking _DEVICE IS READY_ should appear.

 <img alt="How the helloworld app looks like in the browser" src="http://physalis-cms.s3.amazonaws.com/images/ubuntu-helloworld/ubuntuHelloworldPhone.png")">
		
		 
<b>Note:</b> If you are porting an app and have no Ubuntu phone to test it, you can also ask the nice folks at <a href="irc://irc.freenode.net/ubuntu-app-devel">#ubuntu-app-devel</a> to test it for you.
