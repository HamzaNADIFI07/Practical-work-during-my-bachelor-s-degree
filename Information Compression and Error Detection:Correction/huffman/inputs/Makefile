all:
	../huffman -c files/archive_tar.tar encode/archive_tar.huf
	../huffman -d encode/archive_tar.huf decode/archive_tar.tar
	../huffman -c files/archive_zip.zip encode/archive_zip.huf
	../huffman -d encode/archive_zip.huf decode/archive_zip.zip
	../huffman -c files/archive_zip2.zip encode/archive_zip2.huf
	../huffman -d encode/archive_zip2.huf decode/archive_zip2.zip
	../huffman -c files/image1.jpg encode/image1.huf
	../huffman -d encode/image1.huf decode/image1.jpg
	../huffman -c files/image2.png encode/image2.huf
	../huffman -d encode/image2.huf decode/image2.png
	../huffman -c files/audio1.mp3 encode/audio1.huf
	../huffman -d encode/audio1.huf decode/audio1.mp3
	../huffman -c files/audio2.ogg encode/audio2.huf
	../huffman -d encode/audio2.huf decode/audio2.ogg
	@echo "\n\n"
	../filentropy files/archive_tar.tar encode/archive_tar.huf
	../filentropy files/archive_zip.zip encode/archive_zip.huf
	../filentropy files/archive_zip2.zip encode/archive_zip2.huf
	../filentropy files/image1.jpg encode/image1.huf
	../filentropy files/image2.png encode/image2.huf
	../filentropy files/audio1.mp3 encode/audio1.huf
	../filentropy files/audio2.ogg encode/audio2.huf
clean:
	rm -rf decode/* encode/*