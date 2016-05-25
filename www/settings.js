var NativeSettings = function() {
};

NativeSettings.open = function(onsucess, onfail) {
	cordova.exec(onsucess, onfail, "NativeSettings", "open", []);
};

NativeSettings.openSetting = function(settingName, onsucess, onfail) {
	cordova.exec(onsucess, onfail, "NativeSettings", settingName, []);
};

module.exports = NativeSettings;