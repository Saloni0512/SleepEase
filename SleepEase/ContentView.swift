//
//  ContentView.swift
//  SleepEase
//
//  Created by Saloni Agarwal on 11/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    @State private var wakeUp = Date.now
    
    
    
    
    var body: some View {
        NavigationStack {
            VStack{
                Text("When do you wish to wake up?")
                    .font(.headline)
                
                DatePicker("Enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                
                Text("Desired amount of sleep")
                    .font(.headline)
                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                
                Text("Daily coffee intake")
                    .font(.headline)
                Stepper("\(coffeeAmount) cup(s)", value: $coffeeAmount, in: 1...20)
                
                
            }
            .navigationTitle("SleepEase")
            //toolbar modifier to be added
        }
        
    }
}

#Preview {
    ContentView()
}
