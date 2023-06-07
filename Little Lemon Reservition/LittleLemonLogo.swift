//
//  LittleLemonLogo.swift
//  Little Lemon Reservition
//
//  Created by Mohamed Aboullezz on 07/06/2023.
//

import SwiftUI

struct LittleLemonLogo: View {
    var body: some View {
        VStack{
            Image("lemonLogo")
                .resizable()
                .frame(width: 300,height: 300)
                .padding()
        }
    }
}

struct LittleLemonLogo_Previews: PreviewProvider {
    static var previews: some View {
        LittleLemonLogo()
    }
}
