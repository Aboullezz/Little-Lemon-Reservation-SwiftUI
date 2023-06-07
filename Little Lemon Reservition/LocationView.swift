//
//  LocationView.swift
//  Little Lemon Reservition
//
//  Created by Mohamed Aboullezz on 07/06/2023.
//

import SwiftUI

struct LocationView: View {
    @EnvironmentObject var model: Model
    
    var body: some View {
        VStack{
            LittleLemonLogo()
                .padding(.top, 10)
            
            Text(model.displayingReservationForm ? "Reservation Details" : "Select a location")
                .padding([.leading, .trailing], 40)
                .padding([.top, .bottom], 8)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)
            
            NavigationView {
                List(model.resturants, id: \.self) { restaurant in
                    NavigationLink(destination: ReservationForm(restaurant)) {
                        RestaurantView(restaurant)
                    }
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
            .onDisappear{
                if model.tabBarChanged { return }
                model.displayingReservationForm = true
            }
            .frame(maxHeight: .infinity)
            .padding(.top, -10)
            .scrollContentBackground(.hidden)
            .scrollIndicators(.hidden)
        }
    }
}
struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView().environmentObject(Model())
    }
}
