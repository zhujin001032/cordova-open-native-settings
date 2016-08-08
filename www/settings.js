var NativeSettings = function() {
};

NativeSettings.open = function(setting, onsucess, onfail) {
	settings = (typeof setting == 'string' || setting instanceof String) ? [setting] : setting;
	cordova.exec(onsucess, onfail, "NativeSettings", "open", settings);
};

module.exports = NativeSettings;