---
layout: default
---
<h1>Getting started with building an Ubuntu app</h1>

<h4>We show how to get started fast with Apache Cordova and Physalis Build Cloud. For this purpose, we use a sample Hello World
app hosted on GitHub and build it with Physalis. Then, we install that app on a ubuntu phone. 
</h4>
  		
<h2>Building the app with Physalis Build Cloud</h2>

For the purpose of this article, we use a simple <a href="https://github.com/physalisio/helloworld">Hello World app hosted on GitHub</a>.
When opened in a webbrowser, this sample app shows the Apache Cordova logo and a blinking "CONNECTING TO DEVICE". When deployed as an 
app on a phone, it shows a blinking "DEVICE IS READY". 



<a href="/login/">Create a new Physalis account</a> if you haven't already done so. 
Physalis uses GitHub for authentication. Once done, click 
the button "create a new project -> public repository". In the following form, enter 
<ul>
	<li>a name for the project in the first field (e.g. <em>Hello World</em>),</li>
	<li>the following URL in the second field: <em>https://github.com/physalisio/helloworld.git</em> .</li>
</ul>
Finally, click "import project!" and wait 20 to 40 seconds until the build finishes. You can then either download 
the app binary or inspect the build log file.

<h2>Deploying on ubuntu touch</h2>
We install the 
click file we created above to a USB connected phone by using the command line. Make sure the developer mode is enabled!
 You can check this in the settings menu: Settings > About Phone > Developer Mode.

Install the phablet-tools and create a ssh public key. This is needed because the phablet-shell we use later 
connects to the phone with ssh. 

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

We are done. The app should now appear in your list of installed apps. Start the app and a blinking "DEVICE IS READY" should appear.

 <img alt="how the helloworld app looks like in the browser" src="@routes.Assets.at("images/ubuntuHelloworldPhone.png")">
		
		 
<b>Note:</b> If you are porting an app and have no Ubuntu phone to test it, you can also ask the nice folks at <a href="irc://irc.freenode.net/ubuntu-app-devel">#ubuntu-app-devel</a> to test it for you.
