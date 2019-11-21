//
//  helpers.swift
//  swiftUIcalculator
//
//  Created by Akshay Devkate on 17/11/19.
//  Copyright © 2019 Akshay Devkate. All rights reserved.
//

import Foundation


extension Bundle {
    func decode<T:Decodable>(_ type :T.Type, from file: String) -> T {
        guard let url=self.url(forResource:file, withExtention: nil ) else {
            fatalError("Filed to locate \(file) in bundle")
        }
        let decoder = Jsondecoder()
    }
    }
