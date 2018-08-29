//
//  ResortObject.swift
//  SkiScore
//
//  Created by Alex Rapier on 28/08/2018.
//  Copyright © 2018 AlexRapier. All rights reserved.
//

import UIKit

class ResortObject: NSObject {
    
    let resortName: String!
    let country: String!
    let image: UIImage?
    let ranking: String!
    let temperature: String!
    let cost: String!
    let powder: String!
    
  
    init(name: String, country: String, image: UIImage, ranking: String, temperature: String, cost: String, powder: String) {
        
        self.resortName = name
        self.country = country
        self.image = image
        self.ranking = ranking
        self.temperature = temperature
        self.cost = cost
        self.powder = powder
    }
}
