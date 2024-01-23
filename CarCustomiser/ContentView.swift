//
//  ContentView.swift
//  CarCustomiser
//
//  Created by Ed Slack on 19/01/2024.
//

import SwiftUI

struct contentView: View {
    @State private var starterCars = StarterCars()
    @State private var selectedCar: Int = 0 {
        didSet {
            if selectedCar >= starterCars.cars.count {
                selectedCar = 0
            }
        }
    }
    @State private var spoilerUpgrade = false
    @State private var weightReduction = false
    
    
    var body: some View {
        let spoilerUpgradeBinding = Binding<Bool> (
            get: {self.spoilerUpgrade },
            set: {newValue in
                self.spoilerUpgrade = newValue
                if newValue == true{
                    starterCars.cars[selectedCar].handling += 1
                } else {
                    starterCars.cars[selectedCar].handling -= 1
                }
            }
        )
        
        Form {
            VStack(alignment: .leading, spacing: 20) {
                Text(starterCars.cars[selectedCar].displayStats())
                Button("Next Car", action: {
                    selectedCar += 1
                })
            }
            Section {
                Toggle("Spoiler Upgrade", isOn: $spoilerUpgrade)
                Toggle("Weight Reduction", isOn: $weightReduction)
            }
        }
    }
}

#Preview {
    contentView()
}
