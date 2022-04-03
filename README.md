# ionic 3 project with cordova (no capacitor)


## prereq

- android sdk in /opt/android-sdk
- java 8
- android studio

bash environment
```
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export PATH=$JAVA_HOME/bin:$PATH
export ANDROID_HOME=/opt/android-sdk
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/emulator:$PATH
```

or fish environment
```
set -gx JAVA_HOME /usr/lib/jvm/java-8-openjdk/
set -gx PATH $JAVA_HOME/bin $PATH
set --export ANDROID_HOME /opt/android-sdk
set -gx PATH $ANDROID_HOME/tools $PATH;
set -gx PATH $ANDROID_HOME/tools/bin $PATH;
set -gx PATH $ANDROID_HOME/platform-tools $PATH;
set -gx PATH $ANDROID_HOME/emulator $PATH
```


Android sdk manager and avd manager are accessible from android studio GUI

## init

```
ionic start myApp super --type=ionic-angular
```


ionic info
```
Ionic:

   Ionic CLI          : 6.19.0 (/lab/experiments/ionic/venv/lib/node_modules/@ionic/cli)
   Ionic Framework    : ionic-angular 3.9.9
   @ionic/app-scripts : 3.2.4

Cordova:

   Cordova CLI       : 11.0.0
   Cordova Platforms : android 10.1.1
   Cordova Plugins   : cordova-plugin-ionic-keyboard 2.2.0, cordova-plugin-ionic-webview 5.0.0, (and 3 other plugins)

Utility:

   cordova-res : 0.15.4
   native-run  : 1.5.0

System:

   Android SDK Tools : 26.1.1 (/opt/android-sdk)
   NodeJS            : v12.13.0 (/lab/experiments/ionic/venv/bin/node)
   npm               : 6.12.0
   OS                : Linux 5.15
```


## run on android

add your PC ip in resources/android/xml/network_security_config.xml
```
<domain includeSubdomains="true">http://192.168.2.50</domain>
```

add emulator with android avdmanager

build cordova platform
```
make android-rebuild
```

run android app
```
make android-run
```