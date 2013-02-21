/*
 Copyright (C) 2012,2013 by Rand Paulin for Black Powder Media, iMpulse Controller

 Copyright (C) 2011 by Stuart Carnie
 
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
 */


#import "iMpulseTestViewController.h"
#import "iMpulseReaderView.h"

@implementation iMpulseTestViewController
@synthesize buttonA;
@synthesize buttonB;
@synthesize buttonC;
@synthesize buttonD;
@synthesize buttonE;
@synthesize buttonF;
@synthesize buttonG;
@synthesize buttonH;
@synthesize buttonLt;
@synthesize buttonRt;
@synthesize buttonUp;
@synthesize buttonDn;
@synthesize stick;
@synthesize playerMode;

- (void)dealloc
{
    [buttonA release];
    [buttonB release];
    [buttonC release];
    [buttonD release];
    [buttonE release];
    [buttonF release];
    [buttonG release];
    [buttonH release];
    [buttonLt release];
    [buttonRt release];
    [buttonUp release];
    [buttonDn release];
    [stick release];
    [playerMode release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    iMpulseReaderView *control = [[iMpulseReaderView alloc] initWithFrame:CGRectZero];
    [self.view addSubview:control];
    control.active = YES;
    control.delegate = self;
    [control release];    
    _stickCenter = stick.center;
}

- (void)viewDidUnload
{
    [self setButtonA:nil];
    [self setButtonB:nil];
    [self setButtonC:nil];
    [self setButtonD:nil];
    [self setButtonE:nil];
    [self setButtonF:nil];
    [self setButtonG:nil];
    [self setButtonH:nil];
    [self setButtonLt:nil];
    [self setButtonRt:nil];
    [self setButtonUp:nil];
    [self setButtonDn:nil];
    [self setStick:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)setState:(BOOL)state forButton:(iMpulseState)button {
    CGPoint center =  stick.center;
    
    if (button & iMpulsePlayer1) {playerMode.text = @"Player 1 Mode";}
    if (button & iMpulsePlayer2) {playerMode.text = @"Player 2 Mode";}
        
    switch (button) {
        case iMpulseButton1V:
        case iMpulseButton2V:
            buttonA.selected = state;
            break;
        case iMpulseButton1u:
        case iMpulseButton2u:
            buttonB.selected = state;
            break;
        case iMpulseButton1n:
        case iMpulseButton2n:
            buttonD.selected = state;
            break;
        case iMpulseButton1W:
        case iMpulseButton2W:
            buttonF.selected = state;
            break;
        case iMpulseButton1M:
        case iMpulseButton2M:
            buttonG.selected = state;
            break;
        case iMpulseButton1A:
        case iMpulseButton2A:
            buttonH.selected = state;
            break;
        case iMpulseJoystickLeft:
        case iMpulseJoystick2Left:
            buttonLt.selected = state;
            break;
        case iMpulseJoystickRight:
        case iMpulseJoystick2Right:
            buttonRt.selected = state;
            break;
        case iMpulseJoystickUp:
        case iMpulseJoystick2Up:
            buttonUp.selected = state;
            break;
        case iMpulseJoystickDown:
        case iMpulseJoystick2Down:
            buttonDn.selected = state;
            break;
        default:
            break;
    }
    stick.center = center;

}

- (void)buttonDown:(iMpulseState)button {
    [self setState:YES forButton:button];
}

- (void)buttonUp:(iMpulseState)button {
    [self setState:NO forButton:button];    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortrait && interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
