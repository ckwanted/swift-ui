//
//  DriverDetail.swift
//  01-MiPrimeraApp
//
//  Created by Juan Gabriel Gomila Salas on 03/06/2019.
//  Copyright © 2019 Frogames. All rights reserved.
//

import SwiftUI

struct DriverDetail : View {
    
    var driver : Driver
    
    var body: some View {
        VStack {
            Image(driver.team.imageName)
                .resizable()
                .frame(height: 230)
            
            Image(driver.imageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 18)
                .offset(x: 0, y: -65)
                .padding(.bottom, -55)
            
            Text(driver.name)
                .font(.system(size: 45))
                .fontWeight(.bold)
                .padding(.horizontal)
                .minimumScaleFactor(0.5)
            
            StatsRow(statKey: "Edad", statValue: String(driver.age))

            StatsRow(statKey: "Número", statValue: String(driver.number))

            StatsRow(statKey: "Origen", statValue: driver.birthPlace)
            
            Spacer()
            
        }.edgesIgnoringSafeArea(.top)
    }
}

#if DEBUG
struct DrivereDetail_Previews : PreviewProvider {
    static var previews: some View {
        Group  {
            DriverDetail(driver: drivers[6])
                .previewDevice("iPhone XS Max")
                .environment(\.sizeCategory, .extraExtraExtraLarge)
                .previewDisplayName("XS Max - XXL")
            
//            DriverDetail(driver: drivers[0])
//                .previewDevice("iPhone XS Max")
//                .environment(\.sizeCategory, .extraSmall)
//                .previewDisplayName("XS Max - XS")
            
            DriverDetail(driver: drivers[0])
                .previewDevice("iPhone SE")
                .environment(\.sizeCategory, .extraExtraExtraLarge)
                .previewDisplayName("SE - XXL")
            
//            DriverDetail(driver: drivers[0])
//                .previewDevice("iPhone SE")
//                .environment(\.sizeCategory, .extraSmall)
//                .previewDisplayName("SE - XS")
          
        }
    }
}
#endif
