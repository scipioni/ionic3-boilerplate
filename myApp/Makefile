serve:
	ionic serve

android-run:
	ionic cordova run android -l --no-native-run --external

android-rebuild:
	ionic cordova platform remove android
	make platforms/android

android: platforms/android
platforms/android:
	ionic cordova platform add android

