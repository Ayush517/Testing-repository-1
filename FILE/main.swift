//
//  main.swift
//  FILE
//
//  Created by Ayushi Tiwari on 2020-07-16.
//  Copyright © 2020 Ayushi Tiwari. All rights reserved.
//

import Foundation
import libjpeg
import TensorFlow
import ModelSupport

let path = "/Users/ayush517/Downloads/tiger.jpg"
func main() {
    print("Hello, World!")
    
    let imgBuffer = try! LoadJPEG(atPath: path, imageFormat: .RGB888)
    
    let path2 = "/Users/ayush517/Downloads/tigerNEWAug23.jpg"
    
    let retVal = try! SaveJPEG(atPath: path2, image: imgBuffer!, dataPointer: imgBuffer!.buffer)
    print(retVal)
}

main()
