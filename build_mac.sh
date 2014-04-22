rm -rf ./build
zip -r ../${PWD##*/}.nw *
mkdir ./build
mkdir ./build/macosx
cp -R /Applications/node-webkit.app/ ./build/macosx/node-webkit.app
cp ./images/icon.icns ./build/macosx/node-webkit.app/Contents/Resources/nw.icns
cp -R ../camera.nw ./build/macosx/node-webkit.app/Contents/Resources/
unzip ./build/macosx/node-webkit.app/Contents/Resources/camera.nw -d ./build/macosx/node-webkit.app/Contents/Resources/app.nw
cd ./build/macosx/
ls
mv node-webkit.app Camera.app
