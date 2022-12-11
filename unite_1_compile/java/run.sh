#!


echo 'run level_1'

echo 'run simple'
cd ./level_1/simple
javac Ukraine.java
java Ukraine

cd ../

echo 'run package'
cd ./package
javac ua/com/alevel/Ukraine.java
java ua.com.alevel.Ukraine

cd ../

echo 'run separate package'
cd ./separate_package
javac ua/com/alevel/Ukraine.java
java ua.com.alevel.Ukraine

cd ../

echo 'run minimal proj'
cd ./minimal_proj
javac -sourcepath ./src -d build/classes ./src/ua/com/alevel/Ukraine.java
java -cp build/classes ua.com.alevel.Ukraine

cd ../

echo 'run med proj and create simple jar'
cd ./med_proj
javac -sourcepath ./src -d build/classes ./src/ua/com/alevel/Ukraine.java
jar cvfm build/jar/Ukraine.jar resources/MANIFEST.MF -C build/classes .
java -jar build/jar/Ukraine.jar

cd ../../

echo 'run level 2 (include libs)'

cd ./level_2

echo 'run simple proj who contains external library (jar)'
cd ./include_libs
javac -sourcepath ./src -d build/classes/ -cp ./commons-lang3-3.12.0-javadoc.jar src/ua/com/alevel/test/Freedom.java src/ua/com/alevel/Ukraine.java
java -cp build/classes/:./lib/commons-lang3-3.12.0-javadoc.jar ua.com.alevel.Ukraine

cd ../

echo 'run create jar who contains external library (jar)'
cd ./jar
. ./run_jar.sh

cd ../../

. ./remove-class.sh