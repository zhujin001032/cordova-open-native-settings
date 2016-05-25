var NativeSettings = function() {
};

NativeSettings.open = function(setting_name, onsucess, onfail) {
	cordova.exec(onsucess, onfail, "NativeSettings", setting_name, []);
};

module.exports = NativeSettings;