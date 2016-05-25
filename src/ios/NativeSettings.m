#import "NativeSettings.h"
@import UIKit;

@implementation NativeSettings

- (void)open:(CDVInvokedUrlCommand*)command
{
	CDVPluginResult* pluginResult = nil;
	if (![[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"prefs:root=Bluetooth"]]) {
		pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
	} else {
		pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:"Opened"];
	}
	
	[self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
