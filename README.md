# Poor Man's Systest

Basic Linux Performance Tests in a script.


## Content

Right now, this simple script performs a basic disk speed test, Dhrystone from UnixBench 5 and GeekBench 3.

The release 3 of Geekbench has been chosen over more recent releases because it still supports 32 bit systems.

## Usage

Make it executable and run it with:

   ./systest.sh
   
Some of the tests may not recognize correctly systems based on an ARM cpu.

## Running on 64bit Systems

If you're running 64-bit Ubuntu install the 32-bit compatibility libraries with the following command:

    sudo apt-get install libc6:i386 libstdc++6:i386
    
If you're running 64-bit Debian install the 32-bit compatibility libraries with the following commands:

    sudo dpkg --add-architecture i386 
    sudo apt-get update
    sudo apt-get install libc6:i386 libstdc++6:i386
