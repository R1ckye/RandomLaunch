@interface SBApplicationController : NSObject
+(id)sharedInstance;
-(id)allApplications;
@end


@interface SBUIController : NSObject
-(void)activateApplicationAnimated:(id)animated;
@end

#define PrefsFile @"/var/mobile/Library/Preferences/com.rickye.randomlaunch.plist"

BOOL isEnabled() {
        return [[[NSDictionary dictionaryWithContentsOfFile:PrefsFile]objectForKey:@"Enabled"]boolValue];
}

%hook SBUIController
-(void)activateApplicationAnimated:(id)animated {
if (isEnabled()) {
NSArray *array = [[%c(SBApplicationController) sharedInstance]allApplications];

%orig([array objectAtIndex:rand() % ([array count] -1)]);
}
else { %orig; }
}
%end