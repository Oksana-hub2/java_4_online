#!

echo 'variant 1'

javac -sourcepath ./src -d build/classes/ -cp ./lib/JColor-5.5.1.jar src/ua/com/alevel/test/Freedom.java src/ua/com/alevel/Ukraine.java
cd lib
jar xf JColor-5.5.1.jar
cp -rf com ../build/classes
cd ..
jar cvfm build/jar/Ukraine.jar resources/MANIFEST.MF -C build/classes .
jar tf build/jar/Ukraine.jar
java -jar build/jar/Ukraine.jar

echo 'variant 2'
rm -rf lib/com
rm -rf lib/META-INF
javac -sourcepath ./src -d build/classes/ -cp ./lib/JColor-5.5.1.jar src/ua/com/alevel/test/Freedom.java src/ua/com/alevel/Ukraine.java
cp -r lib/*.jar build/jar
jar cvfm build/jar/Ukraine.jar resources/MANIFEST.MF -C build/classes .
java -jar build/jar/Ukraine.jar

