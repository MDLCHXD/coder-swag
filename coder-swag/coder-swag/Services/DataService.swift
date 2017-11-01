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
    Category(title: "SHIRTS", imageName: "shirts.png"), Category(title: "HOODIES", imageName: "hoodies.png"), Category(title: "HATS", imageName: "hats.png"), Category(title: "DIGITAL", imageName: "digital.png")]
    func getCategories() -> [Category] {
        return categories
    }
}
