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

let path = "/Users/ayushitiwari/Downloads/tiger.jpg"
let url = (path as NSString).utf8String
let filename = UnsafeMutablePointer<Int8>(mutating: url)!
 
func main() {
   print("Hello, World!")

   let path = "/Users/ayushitiwari/Downloads/tiger.jpg"
   let url = (path as NSString).utf8String
   let _ = UnsafeMutablePointer<Int8>(mutating: url)!

   var width: Int32 = 0
   var align: Int32 = 0
   var height: Int32 = 0
   var pixelFormat: Int32 = 0
   var inSubsamp: Int32 = 0

    var _ = tjJPEGLoadCompressedImage(filename: filenamepointer, width: &width, align: &align, height: &height, pixelFormat: &pixelFormat, inSubsamp: inSubsamp, flags: 0)
    print(width)
    print(align)
    print(height)
    print(pixelFormat)
    print(inSubsamp)
}




