# Apache Tika Server w/ Tesseract in Docker

Sets up a container based on
[java:7](https://hub.docker.com/_/java/)


## Includes

  * [Apache Tika Server](http://wiki.apache.org/tika/TikaJAXRS) - latest development version (1.13-SNAPSHOT currently)
  * [Tesseract](https://code.google.com/p/tesseract-ocr/), with English and German languages

If you prefer the latest stable version of Tika, you may want to consider
[`logicalspark/docker-tikaserver`](https://github.com/LogicalSpark/docker-tikaserver)

## Usage

To use the image from the Docker registry, just do:

    sudo docker run -d -p 9998:9998 mattfullerton/tika-tesseract-docker
    
N.B.: This automated build has a problem preventing the process from running. An alternative, manually built repository is at mattfullerton/tika-tesseract-docker-no-automation, or you may have success building yourself (below), or not. I am trying to understand how this can happen!

I.e., alternatively try:

    sudo docker run -d -p 9998:9998 mattfullerton/tika-tesseract-docker-no-automation
    
To build and run the container, do the following:

    sudo docker build -t tika github.com/mattfullerton/tika
    sudo docker run -d -p 9998:9998 tika

Test with commands like:

    curl -T testpdf.pdf http://`docker-machine ip default`:9998/tika
    curl -T multipage_tiff_example.tif http://`docker-machine ip default`:9998/tika
    
(or replace ``docker-machine ip default`` with the IP address of your docker container).
The second command uses OCR.

## Author

  * Matt Fullerton (<matt.fullerton@gmail.com>)
  * Todd Tyree (<tatyree@gmail.com>)

## Credits

  * Todd Tyree's version (http://github.com/ministryofjustice/tika) was inspired by Andreas Wålm's (<andreas@walm.net>) [tika app repo/container](https://github.com/walm/docker-tika)

