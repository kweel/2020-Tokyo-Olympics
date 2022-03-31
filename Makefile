runTests: DataWranglerTests 
	javac  -cp .:junit5.jar CountryLoader.java
	
	javac  -cp .:junit5.jar Country.java

DataWranglerTests: DataWranglerTests.class
	java -jar junit5.jar --class-path . --scan-classpath

DataWranglerTests.class: DataWranglerTests.java
	javac -cp .:junit5.jar DataWranglerTests.java -Xlint

clean:
	rm *.class
