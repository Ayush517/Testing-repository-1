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

let path = "/Users/ayush517/Downloads/tiger.jpg"

func main() {
    print("Hello, World!")

//    let imgBuffer = LoadJPEG(atPath: path, imageFormat: .RGB888)
//
//    let path2 = "/Users/ayush517/Downloads/tigerNEWAug.jpg"
//
//    let retVal = SaveJPEG(atPath: path2, image: imgBuffer!)
//    print(retVal)
    
    let fileManager = FileManager.default
    let imagePath = fileManager.displayName(atPath: path)
    print(imagePath)
    var cont = fileManager.contents(atPath: path)!
    print(cont)
//    var st = cont.makeIterator()
//    print(st)
//
//    for i in 0..<cont.count {
//        print(st.next())
//        print(i)
//    }
    
    cont.forEach { byte in
        print(byte)
    }
}

main()
