//
//  CategoryCellTableViewCell.swift
//  coder-swag
//
//  Created by Andrew Smith on 10/31/17.
//  Copyright © 2017 Andrew Smith. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
