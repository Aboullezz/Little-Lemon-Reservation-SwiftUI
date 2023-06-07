//
//  Reservation.swift
//  Little Lemon Reservition
//
//  Created by Mohamed Aboullezz on 07/06/2023.
//

import Foundation

struct Reservation {
  var restaurant: RestaurantsLocation
  var customerName: String
  var customerEmail: String
  var customerPhoneNumber: String
  var reservationDate: Date
  var party: Int
  var specialRequests: String
  var id = UUID()
  
  init(restaurant:RestaurantsLocation = RestaurantsLocation(),
       customerName: String = "",
       customerEmail: String = "",
       customerPhoneNumber: String = "",
       reservationDate:Date = Date(),
       party:Int = 1,
       specialRequests:String = "") {
    self.restaurant = restaurant
    self.customerName = customerName
    self.customerEmail = customerEmail
    self.customerPhoneNumber = customerPhoneNumber
    self.reservationDate = reservationDate
    self.party = party
    self.specialRequests = specialRequests
  }
  
}
