//
//  DataService.swift
//  coder-swag
//
//  Created by Andrew Smith on 10/31/17.
//  Copyright © 2017 Andrew Smith. All rights reserved.
//

import Foundation
//this is a singleton
class DataService {
    static let instance = DataService()
    
    private let categories = [
    Category(title: "SHIRTS", imageName: "shirts.png"),
    Category(title: "HOODIES", imageName: "hoodies.png"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "DIGITAL", imageName: "digital.png")]
    
    private let hats = [
        Product(title: "Devslopes logo Beanie", price: "$18", imageName: "hat01.png"),
        Product(title:"Devslopes Logo Hat Black ", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo SnapBack", price: "$22", imageName: "hat04.png"),
    
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Black", price: "$32", imageName: "hoodie04.png"),
    
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Devslopes Logo Shirt Grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Shirt Black", price: "$18", imageName: "shirt05.png")
    ]
    
    //this is an empty array, you must declare the type though, and the () at the end creates the empty array
    private let digitalGoods = [Product]()
    
    
    
    
    
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getpProducts(forCategryTitle title:String) -> [Product] {
        switch title {
        case "SHIRTS":
           return getShirts()
        case "HATS":
          return getHats()
        case "HOODIES":
           return getHoodies()
        case "DIGITAL GOODS":
           return getDigitalGoods()
        default:
           return getShirts()
        }
    }
    
    func getHats() -> [Product]{
        return hats
    }
    
    func getHoodies() -> [Product]{
        return hoodies
    }
    func getShirts() -> [Product]{
        return shirts
    }
    func getDigitalGoods() -> [Product]{
        return digitalGoods
    }
    
    
    
    
}
