//
//  Friend.swift
//  SimpleCollect
//
//  Created by Apple on 2017/4/8.
//  Copyright © 2017年 NJU. All rights reserved.
//

import UIKit
import UIKit

enum Gender {
    case male
    case female
}
class Friend {
    var name:String=""
    var photo:UIImage?
    var gender:Gender = .male
    var mood=0.0

    init?(name: String, photo: UIImage?, mood: Double) {
        if name.isEmpty || mood<0 {
            return nil
        }
        self.name=name
        self.photo=photo
        self.gender=Gender.male
        self.mood=mood
    }
}
