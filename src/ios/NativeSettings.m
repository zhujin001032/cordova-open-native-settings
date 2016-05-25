#import "NativeSettings.h"
@import UIKit;

@implementation NativeSettings

- (BOOL)do_open:(NSString *)pref {
	if ([[UIApplication sharedApplication] openURL:[NSURL URLWithString:pref]]) {
		return YES;
	} else {
		return NO;
	}
}

- (void)open:(CDVInvokedUrlCommand*)command
{
	CDVPluginResult* pluginResult = nil;
	NSString* key = [command.arguments objectAtIndex:0];
	BOOL result = nil;
	
	if ([key isEqualToString:@"settings"]) {
		result = do_open(@"prefs:");
	}
	else if ([key isEqualToString:@"about"]) {
		result = do_open(@"prefs:root=General&path=About");
	}
	else if ([key isEqualToString:@"accessibility"]) {
		result = do_open(@"prefs:root=General&path=ACCESSIBILITY");
	}
	else if ([key isEqualToString:@"account"]) {
		result = do_open(@"prefs:root=ACCOUNT_SETTINGS");
	}
	else if ([key isEqualToString:@"airplane_mode"]) {
		result = do_open(@"prefs:root=AIRPLANE_MODE");
	}
	else if ([key isEqualToString:@"autolock"]) {
		result = do_open(@"prefs:root=General&path=AUTOLOCK");
	}
	else if ([key isEqualToString:@"display"]) {
		result = do_open(@"prefs:root=Brightness");
	}
	else if ([key isEqualToString:@"bluetooth"]) {
		result = do_open(@"prefs:root=General&path=Bluetooth");
	}
	else if ([key isEqualToString:@"castle"]) {
		result = do_open(@"prefs:root=CASTLE");
	}
	else if ([key isEqualToString:@"cellular_usage"]) {
		result = do_open(@"prefs:root=General&path=USAGE/CELLULAR_USAGE");
	}
	else if ([key isEqualToString:@"configuration_list"]) {
		result = do_open(@"prefs:root=General&path=ManagedConfigurationList");
	}
	else if ([key isEqualToString:@"date"]) {
		result = do_open(@"prefs:root=General&path=DATE_AND_TIME");
	}
	else if ([key isEqualToString:@"facetime"]) {
		result = do_open(@"prefs:root=FACETIME");
	}
	else if ([key isEqualToString:@"settings"]) {
		result = do_open(@"prefs:root=General");
	}
	else if ([key isEqualToString:@"tethering"]) {
		result = do_open(@"prefs:root=INTERNET_TETHERING");
	}
	else if ([key isEqualToString:@"music"]) {
		result = do_open(@"prefs:root=MUSIC");
	}
	else if ([key isEqualToString:@"music_equalizer"]) {
		result = do_open(@"prefs:root=MUSIC&path=EQ");
	}
	else if ([key isEqualToString:@"music_volume"]) {
		result = do_open(@"prefs:root=MUSIC&path=VolumeLimit");
	}
	else if ([key isEqualToString:@"keyboard"]) {
		result = do_open(@"prefs:root=General&path=Keyboard");
	}
	else if ([key isEqualToString:@"locale"]) {
		result = do_open(@"prefs:root=General&path=INTERNATIONAL");
	}
	else if ([key isEqualToString:@"location"]) {
		result = do_open(@"prefs:root=LOCATION_SERVICES");
	}
	else if ([key isEqualToString:@"network"]) {
		result = do_open(@"prefs:root=General&path=Network");
	}
	else if ([key isEqualToString:@"nike_ipod"]) {
		result = do_open(@"prefs:root=NIKE_PLUS_IPOD");
	}
	else if ([key isEqualToString:@"notes"]) {
		result = do_open(@"prefs:root=NOTES");
	}
	else if ([key isEqualToString:@"notification_id"]) {
		result = do_open(@"prefs:root=NOTIFICATIONS_ID");
	}
	else if ([key isEqualToString:@"passbook"]) {
		result = do_open(@"prefs:root=PASSBOOK");
	}
	else if ([key isEqualToString:@"phone"]) {
		result = do_open(@"prefs:root=Phone");
	}
	else if ([key isEqualToString:@"photos"]) {
		result = do_open(@"prefs:root=Photos");
	}
	else if ([key isEqualToString:@"reset"]) {
		result = do_open(@"prefs:root=General&path=Reset");
	}
	else if ([key isEqualToString:@"ringtone"]) {
		result = do_open(@"prefs:root=Sounds&path=Ringtone");
	}
	else if ([key isEqualToString:@"browser"]) {
		result = do_open(@"prefs:root=Safari");
	}
	else if ([key isEqualToString:@"search"]) {
		result = do_open(@"prefs:root=General&path=Assistant");
	}
	else if ([key isEqualToString:@"sound"]) {
		result = do_open(@"prefs:root=Sounds");
	}
	else if ([key isEqualToString:@"software_update"]) {
		result = do_open(@"prefs:root=General&path=SOFTWARE_UPDATE_LINK");
	}
	else if ([key isEqualToString:@"storage"]) {
		result = do_open(@"prefs:root=CASTLE&path=STORAGE_AND_BACKUP");
	}
	else if ([key isEqualToString:@"store"]) {
		result = do_open(@"prefs:root=STORE");
	}
	else if ([key isEqualToString:@"usage"]) {
		result = do_open(@"prefs:root=General&path=USAGE");
	}
	else if ([key isEqualToString:@"video"]) {
		result = do_open(@"prefs:root=VIDEO");
	}
	else if ([key isEqualToString:@"vpn"]) {
		result = do_open(@"prefs:root=General&path=Network/VPN");
	}
	else if ([key isEqualToString:@"wallpaper"]) {
		result = do_open(@"prefs:root=Wallpaper");
	} 
	else {
		pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Invalid Action"];
	}
		
	if (result) {
		pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Opened"];
	} else {
		pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Cannot open"];
	}
	
	[self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
