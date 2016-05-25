# OSXLib
A library extending Xojo‘s OS X features – 64 bit and new framework compatible.

This is a sister library of iOSLib. It shares most of the class names and fundamental structure, but it is better structured (a feature that will be transfered to iOSLib soon): Besides the core folder that contains basic classes and methods, the rest is fully optional. Which means you do not have to install the complete library: In most cases the core folder and the framework that you want to use will be sufficient (while, of course, some cross-connections do appear though).

OSXLib tries to make advanced use of Apple’s API features transparent, easy and Xojo-like. Besides the classes themselves, custom controls build wrappers translating to and from Xojo data types but you can always switch to the lower level and use the Apple classes directly.

This library uses the CGFloat datatype, external declares and IDE descriptions. Xojo 2015r3 is therefore the minimum required version. It should be checking for the availability of methods from OS X 10.10 onwards, but I might have overseen a few version hints. If you should be running OSXLib on an older system and experience crashes, please file a bug report. In othercases too of course.

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
