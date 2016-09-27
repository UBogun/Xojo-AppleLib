#Xojo-AppleLib
A library extending Xojo’s features for Apple-based systems (macOS and iOS). 64 Bit and new framwork compatible.

This library combines both OSXLib and iOSLib into one repository combining two libraries using a lot of shared code.
I replaces the stand-alone implementations of iOSLib and OSXLib.
Currently, the iOSLib project doesn’t offer any functionality. It only rebuilds a few of the core classes. More will follow soon.
The OSXLib part has all the functionality of the former OSXLib, with CoreBluetooth, SpriteKit and more.

This library uses the CGFloat datatype, external declares and IDE descriptions. Xojo 2015r3 is therefore the minimum required version. It should be checking for the availability of methods from OS X 10.10 onwards, but I might have overseen a few version hints. If you should be running OSXLib on an older system and experience crashes, please file a bug report. In other cases too of course.
While rebuilding the classes, I add description tags to methods and properties of included classes. Please refer to Apple’s developer documentation for more information on their use. Later, convenience methods which will "Xojoidize" many features will follow.

# Important!
> **You need to install Joe Ranieri’s OBJC blocks plugin: https://www.dropbox.com/s/rif5r34r15xhaxc/Blocks%20Plugin.zip**  
Here’s the forum discussion about it: https://forum.xojo.com/3586-obj-c-blocks-as-callbacks/0  
  
Do not be alarmed that newer version warning might appear from tine to time. I check compatibility with the recent beta and it can happen that this version will be used for save accidentally. 

# Very important!
**Although the connections inside my development projects are ok, you will be prompted for a variety of unfound classes and folders, usually within the shared files or the internal core classes. Very sorry! I am working on removing those wrong links. Seems that Xojo doesn’t like copying the files into internal folders. I’ll post a new version once it seems to be ok. Currently, you can just ignore the broken links. The shared classes will be included on Navigator’s main level and everything will run. Anyway, that’s not what I intended to create – I hope to get it fixed soon!**  
**A first workaround is to use the fullcontent zip file where I included everything to contain the internal folder structure. It turned out that Xojo is looking for physical folders when I only created an internal one and the files are being shared. so please, until I got it all sorted out (if I do):**
# Do not open the project files, they will give you unfound sources prompts. Instead, use the fullcontent.zip file.

## Disclaimer
Written 2016 by Ulrich Bogun, xojoblog.me. You are entitled to use this library AS IS and on your own risk. I do not take responsibility for anything harmful that could happen to your computer, but I can assure you there are no backdoors, traps or intended bugs of this and different kinds and I am using this library myself without my computer blowing up or similar things.

There are, anyway, some places where I had to leave the programming style recommended by the Xojo engineers, usually because for some problems no recommended path exists. So, please be aware that while I test my classes and usually check for memory leaks too, some code could stop working at some time, and leaks may exist. Please check your project for leaks in Acrtivity monitor and Instruments andnotify me of problems.

## License
I still have to read through different license models. Until then no legalese here but this human readable statement:
OSXLib is free to use, but this does not mean you are free from obligations. 
All this stuff eats a tremendous amount of time. If you want to contribute to the growth of independent, free libraries for Xojo, please consider a keep-it-up-contribution via Paypal to bogun atsign satzservice dot de.
It would be nice to include a "uses OSXLib" hint in your splash or info screen, and a license for an app created with OSXLib is gratefully taken. 
If you use SpriteKit or SceneKit to create games or simulations for a free or commercial but not restricted customer base, consider sending me a license part of the librarie’s license.
And, of course: Contributions to this library are always welcome! With combined effort we could create libraries for all supported platforms in a short period of time. 

## Adding your own controls
Please see the Readme in the OSXLibCanvas class!
