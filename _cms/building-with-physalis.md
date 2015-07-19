---
layout: default
---
  		
<h1>Building your first HTML5 App with Physalis Build Cloud</h1>

_In this short article, we show how to build an simple Apache Cordova App with Physalis Build Cloud._


<h3>The Application</h3>
For the purpose of this article, we use a simple <a href="https://github.com/physalisio/helloworld">Hello World app hosted on GitHub</a>.
When opened in a webbrowser, this sample app shows the Apache Cordova logo and a blinking _CONNECTING TO DEVICE_. When deployed as an 
app on a phone, it shows a blinking _DEVICE IS READY_. 


<h3>Build it!</h3>
<a href="/login/">Create a new Physalis account</a> if you haven't already done so. 
Physalis uses GitHub for authentication. Once done, click 
the button "create a new project -> public repository". In the following form, enter 
<ul>
	<li>a name for the project in the first field (e.g. <em>Hello World</em>),</li>
	<li>the following URL in the second field: <em>https://github.com/physalisio/helloworld.git</em> .</li>
</ul>
Finally, click "import project!" and wait 20 to 40 seconds until the build finishes. You can then either download 
the app binary or inspect the build log file.
