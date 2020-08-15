# Testing-repository


### LoadJPEG Function

* abhi it still decompresses the image as RGB yes? so you need tp modify the decompression acc to what user gives the format as input
so if they ask to decompress as RGB you decompress as RGB, if they want BGR you decompress as BGR etc. etc.  
* like choose pixel format for decompression acc to the image format inputted by user
* rename function to what Brad said in the PR

### SaveJPEG Function

* so here https://github.com/ayushi2103/Testing-repository/blob/master/FILE/jpegturbo.swift#L136 you can see that the image is getting compressed to JPEG but its using hardcoded 0 as pixel format which compresses to RGB Format
* choose the pixel format again according to the the format given to the function in image: ImageData

### jtImage struct

* Enable user input for image format and number of channels
* accordingly create the tensor using number of channels given by user - *might* need to modify the LoadJPEG function, not sure though

### Add error handling in LoadJPEG and SaveJPEG

### Use FileManager for writing/loading a file

### Think of Unit Test for ImageOps

## CMake
## remove commented code
## Add error handling
