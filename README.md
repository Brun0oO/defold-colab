![colab](./docs/colab_logo.png)

# Acces to a Google Colab notebook from a Defold application


## Overview
This project is much more a Proof Of Concept than a direct-to-use template.
It allows to exchange with a Google Colab notebook from a Defold application on a smartphone (validated on iOS device, this should also work on Android device subject to special permissions to be granted to access local photos...).  

The purpose of this project is to :

* perform and check a connection to a remote web server running on a colab notebook (the running notebook displays a qrcode, the defold application needs to scan it, a periodic check of connection is carried out, the connection status is displayed) ;
* send an image to this web server, the colab notebook analyses it and sends its results ;
* wait for the results ; 
* display the results when they are ready.   

**Notes:**

The colab notebook is available here :
<a href="https://colab.research.google.com/github/Brun0oO/Colab/blob/main/fastapi_colab_jprq.ipynb" target="_parent"><img src="https://camo.githubusercontent.com/52feade06f2fecbf006889a904d221e6a730c194/68747470733a2f2f636f6c61622e72657365617263682e676f6f676c652e636f6d2f6173736574732f636f6c61622d62616467652e737667" alt="Open In Colab" data-canonical-src="https://colab.research.google.com/assets/colab-badge.svg"></a>
    
There is not so much ambition in this colab notebook, apart from offering web services through [localtunnel](https://theboroer.github.io/localtunnel-www/) (a free and open-source Ngrok alternative) in order to communicate with this defold application (we just return the dimensions of the given image as a service), it's already not so bad...

You have to launch the colab notebook and scan the displayed QRCode with this defold application.

See the **main/screen.gui_script** file to see how it's implemented.

## Step by step in pictures

First, in your web browser, start the colab notebook execution :
![step 0](./docs/defold-colab_step0.PNG)

From the defold application, scan the QRCode ():

![step 1](./docs/defold-colab_step1.PNG)

Click on the **Change Picture** button :

![step 2](./docs/defold-colab_step2.PNG)

Click on the **Choose File** button :

![step 3](./docs/defold-colab_step3.PNG)

Click on the **Take Photo** button :

![step 4](./docs/defold-colab_step4.PNG)

Click on the **Use Photo** button :

![step 5](./docs/defold-colab_step5.PNG)

Click on the **Analyse Picture** button :

![step 6](./docs/defold-colab_step6.PNG)

Have a look to the **Results** pannel :

![step 7](./docs/defold-colab_step7.PNG)


Enjoy life and take a coffee (in any order you want)!

## Contributing
See [CONTRIBUTE.md](./CONTRIBUTE.md) for details about how to contribute to this project.

