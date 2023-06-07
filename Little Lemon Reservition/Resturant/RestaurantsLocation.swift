//
//  RestaurantsLocation.swift
//  Little Lemon Reservition
//
//  Created by Mohamed Aboullezz on 07/06/2023.
//

import Foundation

struct RestaurantsLocation: Hashable{
    let city: String
    let neighborhood: String
    let phoneNumber: String
    init(city: String = "", neighborhood: String = "", phoneNumber: String = "") {
        self.city = city
        self.neighborhood = neighborhood
        self.phoneNumber = phoneNumber
    }
}
