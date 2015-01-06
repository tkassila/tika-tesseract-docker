# Apache Tika Server w/ Tesseract in Docker

Sets up a container based on
[dockerfile/java](https://registry.hub.docker.com/u/dockerfile/java/)

(This may not be the best basis)

## Includes

  * [Apache Tika 1.8-SNAPSHOT Server](http://wiki.apache.org/tika/TikaJAXRS)
  * [Tesseract](https://code.google.com/p/tesseract-ocr/), with English and German languages

## Usage

To build and run the container, do the following:

    sudo docker build github.com/mattfullerton/tika
    sudo docker run -d -p 9998:9998 tika

Test with commands like:

    curl -T testpdf.pdf http://localhost:9998/tika
    curl -T multipage_tiff_example.tif http://localhost:9998/tika
    
The second command uses OCR.

## Author

  * Matt Fullerton (<matt.fullerton@gmail.com>)
  * Todd Tyree (<tatyree@gmail.com>)

## Credits

  * Todd Tyree's version (http://github.com/ministryofjustice/tika) was inspired by Andreas Wålm's (<andreas@walm.net>) [tika app repo/container](https://github.com/walm/docker-tika)

