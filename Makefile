myApp:
	venv/bin/ionic start myApp super --type=ionic-angular

venv:
	nodeenv -n 12.13.0 venv
	echo "set -gx JAVA_HOME /usr/lib/jvm/java-8-openjdk" >> venv/bin/activate.fish
	echo 'set -gx PATH $JAVA_HOME/bin $PATH' >> venv/bin/activate.fish
	echo "export JAVA_HOME=/usr/lib/jvm/java-8-openjdk" >> venv/bin/activate
	echo 'export PATH=$JAVA_HOME/bin:$PATH' >> venv/bin/activate
	venv/bin/npm i -g @ionic/cli
	venv/bin/npm i -g cordova
	venv/bin/npm i -g cordova-res
	venv/bin/npm i -g native-run

all: venv myApp
