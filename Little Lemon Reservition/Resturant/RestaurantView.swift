//
//  RestaurantView.swift
//  Little Lemon Reservition
//
//  Created by Mohamed Aboullezz on 07/06/2023.
//

import SwiftUI

struct RestaurantView: View {
    private var resturant: RestaurantsLocation
    init(_ resturant: RestaurantsLocation) {
        self.resturant = resturant
    }
    
    var body: some View {
        VStack{
           Text(resturant.city)
                .font(.title)
            HStack{
                Text(resturant.neighborhood)
                Text("")
                Text(resturant.phoneNumber)
            }
            .font(.caption)
            .foregroundColor(.gray)
        }
    }
}

struct ResturantView_Previews: PreviewProvider {
    static var previews: some View {
        let resturantsLocation = RestaurantsLocation(city: "Las Vegas", neighborhood: "Downtown", phoneNumber: "(702) 555-9898")
        RestaurantView(resturantsLocation)
    }
}
