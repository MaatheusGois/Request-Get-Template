//
//  Dish.swift
//  BuonaSeraClient
//
//  Created by Matheus Gois on 03/05/19.
//  Copyright © 2019 Matheus Gois. All rights reserved.
//

import Foundation
import UIKit


struct Dish: Codable {
    let name: String
    let price: String
    let id: String
    
    func getString() {
        print( "Name: \(name), Id: \(id)" )
    }
}
