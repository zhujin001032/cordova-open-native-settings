#import "NativeSettings.h"
@import UIKit;

@implementation NativeSettings

- (void)open:(CDVInvokedUrlCommand*)command
{
        if (![[UIApplication sharedApplication] openURL:[NSURL String:@"prefs:root=Bluetooth"]]) {
			// error
		}
}

@end
