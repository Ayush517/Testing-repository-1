
//
//  jpegturbo.c
//  FILE
//
//  Created by Ayushi Tiwari on 2020-07-21.
//  Copyright © 2020 Ayushi Tiwari. All rights reserved.

import Foundation
import libjpeg

public func tjJPEGLoadCompressedImage( filename: UnsafePointer<Int8>?, width: inout Int32, align: inout Int32,  height: inout Int32, pixelFormat: inout Int32, inSubsamp: Int32, flags: Int) -> UnsafeMutablePointer<UInt8>? {
    
    let scalingFactor = tjscalingfactor( num: 1, denom: 1 )
    let inFormat = UnsafeMutablePointer<Int8>(mutating: "jpg")
    let outFormat = UnsafeMutablePointer<Int8>(mutating: "jpg")
  
    pixelFormat = -1
 
    /* Read the JPEG file into memory. */
    var jpegFile = fopen(filename, "rb")
    fseek(jpegFile, 0, SEEK_END)
    let size = ftell(jpegFile)
    fseek(jpegFile, 0, SEEK_SET)
    let jpegSize = CUnsignedLongLong(size)
    var jpegBuf = (tjAlloc(Int32(jpegSize)))
    fread(jpegBuf, Int(jpegSize), 1, jpegFile)
    fclose(jpegFile)
    jpegFile = nil
    
    var tjInstance = tjInitDecompress()
    tjDecompressHeader(tjInstance, jpegBuf, UInt(jpegSize), &width, &height)
    
    let imgBuf = tjAlloc(3 * width * height)
    tjDecompress2(tjInstance, jpegBuf, UInt(jpegSize), imgBuf, width, 0, height, 0, 0)
    tjFree(jpegBuf)
    jpegBuf = nil
    tjDestroy(tjInstance)
    tjInstance = nil
    
    return imgBuf
}


