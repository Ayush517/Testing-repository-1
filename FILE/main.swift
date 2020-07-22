//
//  main.swift
//  FILE
//
//  Created by Ayushi Tiwari on 2020-07-16.
//  Copyright © 2020 Ayushi Tiwari. All rights reserved.
//

import Foundation
import libjpeg

let numScalingFactors = 0;

let path = "/Users/ayush517/Downloads/tiger.jpg"
let url = (path as NSString).utf8String
let filenamepointer = UnsafeMutablePointer<Int8>(mutating: url)!
 
func main() {
    print("Hello, World!")

    var width: Int32 = 0
    var align: Int32 = 0
    var height: Int32 = 0
    var pixelFormat: Int32 = 0
    let inSubsamp: Int32 = 0

    var imgBuffer = tjJPEGLoadCompressedImage(filename: filenamepointer, width: &width, align: &align, height: &height, pixelFormat: &pixelFormat, inSubsamp: inSubsamp, flags: 0)
    print(width)
    print(align)
    print(height)
    print(pixelFormat)
    print(inSubsamp)
    
    let path2 = "/Users/ayush517/Downloads/savedImage.jpeg"
    let url2 = (path2 as NSString).utf8String
    let filenamepointer2 = UnsafeMutablePointer<Int8>(mutating: url2)!
    
    let retVal = tjJPEGSaveImage(filename: filenamepointer2, buffer: imgBuffer, width: width, pitch: 0, height: height, pixelFormat: 0, outSubsamp: inSubsamp, flags: 0)
    print(retVal)
}

main()
