myApp:
	venv/bin/ionic start myApp super --type=ionic-angular

venv:
	nodeenv -n 12.13.0 venv
	npm i -g @ionic/cli
	npm i -g cordova
	npm i -g cordova-res

all: venv myApp
