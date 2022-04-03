serve:
	ionic serve

android-run:
	ionic cordova run android -l --no-native-run --external

android-apk:
	ionic cordova build android -- --jvmargs='-Xmx12g'

emulator:
	cordova run --emulator

android-rebuild:
	ionic cordova platform remove android
	make platforms/android

android: platforms/android

platforms/android:
	ionic cordova platform add android
	#ionic cordova platform add cordova@7

