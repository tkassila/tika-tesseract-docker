echo "# Installing Maven"
apt-get update
apt-get -y -q install default-jdk maven unzip

echo "# Installing Tika"
mkdir install
curl https://codeload.github.com/apache/tika/zip/trunk -o trunk.zip
unzip trunk.zip
cd tika-trunk
mvn clean install
cp tika-server/target/tika-server-1.8-SNAPSHOT.jar /srv/tika-server-1.8-SNAPSHOT.jar

echo "#Installing tesseract"
apt-get -y -q install tesseract-ocr tesseract-ocr-deu tesseract-ocr-eng

echo "# Cleaning up"
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /setup /build
