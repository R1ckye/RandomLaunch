#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define PrefsFile @"/var/mobile/Library/Preferences/com.rickye.randomlaunch.plist"

// Required

BOOL isCapable()
{
	return YES;
}

BOOL isEnabled()
{
	return [[[NSDictionary dictionaryWithContentsOfFile:PrefsFile]objectForKey:@"Enabled"]boolValue];
}

void setState(BOOL enabled)
{
	[[NSDictionary dictionaryWithObject:[NSNumber numberWithBool:enabled] forKey:@"Enabled"]writeToFile:PrefsFile atomically:YES];
}

float getDelayTime()
{
	return 1.2f;
}

BOOL getStateFast()
{
	return [[[NSDictionary dictionaryWithContentsOfFile:PrefsFile]objectForKey:@"Enabled"]boolValue];
}


