---------------------------------------------------------------
Installation Guide
---------------------------------------------------------------

The pipeline requires 5 third party software (see the third party folder):
CD-HIT, meme suite, SEECER, razers3 and velvet
They aready have compiled version in the third-party folder, if the compiled binary file does not work in your platform, use the following steps to recompile:

1. Compile SEECER
Requirements: SeqAn, GNU Scientific Library
cd SEECER-0.2/
cd jellyfish-1.1.4/
./configure
make
cd ..
cd SEECER/
./configure
make

2. Compile velvet
cd velvet
make

3. Compile meme
tar zxf meme_4.9.0_4.tar.gz 
cd meme_4.9.0/
./configure --prefix=${software_home_directory}/third-party/meme --with-url="http://meme.nbcr.net/meme"
make
make test
make install
(Here ${software_home_directory} is the home directory of software package)

4. Compile CD-HIT
cd cd-hit-v4.6.1/
make

5. Compile RazerS3
cd seqan-trunk/
mkdir build/Debug
cd build/Debug
cmake ../.. -DCMAKE_BUILD_TYPE=Debug
make test_basic
./core/tests/basic/test_basic


---------------------------------------------------------------
How to use this platform
---------------------------------------------------------------

To run this program, after it has been installed using the user guide above (or using the already compiled version)
you should first move to the script directory and run the program as:
./pipeline.sh <case read file> <control read file> <output directory> <kmer length> <list of motif databases (separated with ":")> <"1" to use SEECER, "0" for velvet>
Before running the program, you should first change the config.sh file to change ROOTDIR into home directory of this software package.
# denovochipseq
