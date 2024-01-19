//
//  ContentView.swift
//  CarCustomiser
//
//  Created by Ed Slack on 19/01/2024.
//

import SwiftUI

struct contentView: View {
    let car = Car(make: "Audi", model: "R8", topSpeed: 203, acceleration: 3.2, handling: 5)
    
    var body: some View {
        Text(car.displayStats())
            .padding()
    }
}

#Preview {
    contentView()
}
