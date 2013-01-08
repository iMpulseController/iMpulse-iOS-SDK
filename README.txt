# iMpulse-iOS v10.5
Project which demonstrates using the iMpulse Controller with iOS devices.
	Forked from https://github.com/scarnie/iCade-iOS version 1.1-13 g88d13b1 
	by Rand Paulin for Black Powder Media LLC
Changes:
	The class names etc have been refactored to indicate iMpulse
	The 2nd Player mode has been implemented
	The demo has been updated to be more clear and show more iMpulse layout
TODO:
	Add methods to
		control 'key finder' function
		identify iMpulse modes
		identify device if possible

## Demo
Pair up your iMpulse, or other HID controller, run the project and you're off.

## Usage
To use in your own app, copy the following 3 files from the iMpulse folder:

* `iMpulseReaderView.h`, `iMpulseReaderView.m` and `iMpulseState.h`

Add an instance of `iMpulseReaderView` to your main game view.  Set `view.active = YES` to ensure 
the view receives events from the controller.  In addition, when active, the view will 
automatically handle `didEnterBackground` and `didBecomeActive` notifications, to avoid loss of events.  
You can either read the `iMpulseReaderView.iMpulseState` property to determine the current state, or 
implement the `iMpulseEventDelegate` protocol on your target to receive appropriate notifications.


### Mapping
Lists the mapping between various controllers.  Directional controls are the same.  It is recommended 
you use the latest [v2.3](http://boards.openpandora.org/index.php?/topic/5137-new-icp-test-firmware-v21/page__view__findpost__p__125398) iControlPad firmware and start the device by holding down A+B+Y then START.  This firmware will be official soon.

8 buttons are mapped as follows:

iMpulse Generic  Other
V       A        SELECT
u       B        LEFT SHOULDER
        C        START
n       D        RIGHT SHOULDER
        E        Y
W       F        A
M       G        B
A       H        X

The iMpulse Right Handed button layout is
        ^       o       M       
    <       >       A       V   
        v               W       
       with u and n on the back



The Generic button layout is:
 ^	  A C E G
< >	  B D F H
 v

Labeling the iMpulse with Generic buttons:
        ^       o       G
    <       >       H       A
        v               F
        with B and D on the back


ⒶⒷⒸⒹⒺⒻⒼⒽⒾⒿⓀⓁⓂⓃⓄⓅⓆⓇⓈⓉⓊⓋⓌⓍⓎⓏ

## License
Copyright (C) 2012, 2013 by Randall Paulin and Black Powder Media
Copyright (C) 2011, 2012 by Stuart Carnie

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.


