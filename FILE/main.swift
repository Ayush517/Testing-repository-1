//
//  main.swift
//  FILE
//
//  Created by Ayushi Tiwari on 2020-07-16.
//  Copyright © 2020 Ayushi Tiwari. All rights reserved.
//

import Foundation
import libjpeg
import ModelSupport

let numScalingFactors = 0;

//let path = "/Users/ayushitiwari/Downloads/tiger.jpg"
//let url = (path as NSString).utf8String
//let filenamepointer = UnsafeMutablePointer<Int8>(mutating: url)!

func main() {
    print("Hello, World!")

    var width: Int32 = 0
    var align: Int32 = 0
    var height: Int32 = 0
    var pixelFormat: Int32 = 0
    let inSubsamp: Int32 = 0

    let imgBuffer = LoadJPEG(atPath: path, imageFormat: .RGB888)
    print(width)
    print(align)
    print(height)
    print(pixelFormat)
    print(inSubsamp)
    
    let path2 = "/Users/ayushitiwari/Downloads/tigerNEW.jpg"
    let url2 = (path2 as NSString).utf8String
    let filenamepointer2 = UnsafeMutablePointer<Int8>(mutating: url2)!
    
    let retVal = SaveJPEG(atPath: path2, image: imgBuffer!)
    print(retVal)
    
}
