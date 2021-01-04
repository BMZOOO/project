//
//  Bicycle.swift
//  project
//
//  Created by Batool  Jawaheri  on 1/4/21.
//

import Foundation

struct Bicycle: Identifiable,Hashable {
    let name: String
    let num: String
    let price: Int
    let id = UUID()
 
}
 
 let bicycles = [
 
    Bicycle(name: "1", num: "1", price: 20),
    Bicycle(name: "2", num: "2", price: 20),
    Bicycle(name: "3", num: "3", price: 20),
    Bicycle(name: "4", num: "4", price: 20),
    Bicycle(name: "5", num: "5", price: 20),
    Bicycle(name: "6", num: "6", price: 20),
    Bicycle(name: "7", num: "7", price: 20),
    Bicycle(name: "8", num: "8", price: 20),
 
 ]

