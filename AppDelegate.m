//
//  AppDelegate.m
//  DoubanFM
//
//  Created by Martin Michael on 12-1-19.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (BOOL)applicationShouldHandleReopen:(NSApplication *)theApplication
					hasVisibleWindows:(BOOL)flag
{//make closed window appare by click dock icon
	if (flag) {
		return NO;
	}	
	else
	{
		[_window makeKeyAndOrderFront:self];
		return YES;	
	}
}

- (IBAction)btnPlay:(id)sender {
//    NSLog(@"~");
//    NSOpenPanel *theOpenPanel = [NSOpenPanel openPanel];
//    [theOpenPanel setAllowsMultipleSelection:NO];
//    NSInteger result = [theOpenPanel runModal];
//    NSArray *theFiles = [theOpenPanel filenames];
//    NSString *theFileName = [theFiles objectAtIndex:0];
//    NSLog(@"%@",theFileName);
    NSSound *sound = [[NSSound alloc] initWithContentsOfFile:@"/Users/Orange/p500685.mp3" byReference:YES];
    [sound play];
//    [sound release];
}
@end
