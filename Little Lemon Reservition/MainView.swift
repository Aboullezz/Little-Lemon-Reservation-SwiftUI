//
//  MainView.swift
//  Little Lemon Reservition
//
//  Created by Mohamed Aboullezz on 07/06/2023.
//

import SwiftUI

struct MainView: View {
    @StateObject var model = Model()
    @State var tabSelection = 0
    
    var body: some View {
        TabView(selection: $model.tabViewSelectedIndex){
            LocationView()
                .tag(0)
                .tabItem {
                    if !model.displayingReservationForm{
                        Label("Locations", systemImage: "fork.knife")
                    }
                }
            ReservationView()
                .tag(1)
                .tabItem {
                    if !model.displayingReservationForm {
                        Label("Reservation", systemImage: "square.and.pencil")
                    }
                }
        }
        .environmentObject(model)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
