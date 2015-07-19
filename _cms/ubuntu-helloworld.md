---
layout: default
---
<h1>Deploying an App on Ubuntu Touch</h1>

_In this article, we show how to ins	tall a click file on a Ubuntu Touch device. We deploy the sample 
App we created in <a href="/training/ubuntu-helloworld/">the hello world tutorial.</a>_

<h3>Setting up the phablet shell</h3>
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
