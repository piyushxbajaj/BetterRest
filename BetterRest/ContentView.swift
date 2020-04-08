//
//  ContentView.swift
//  BetterRest
//
//  Created by Piyush Bajaj on 08/04/20.
//  Copyright © 2020 Piyush Bajaj. All rights reserved.
//

import SwiftUI
//import SleepCalculator

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date()
    @State private var coffeeAmount = 1
    
    
    var body: some View {
        NavigationView{
            VStack{
                Text("When do you want to wake up ?")
                    .font(.headline)
                DatePicker("Please select the date",selection: $wakeUp,displayedComponents: .hourAndMinute)
                .labelsHidden()
//                More to come
                Text("desired amount to sleep")
                    .font(.headline)
                Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
                    Text("\(sleepAmount, specifier: "%g") hours")
                }
                Stepper(value: $coffeeAmount, in: 1...20) {
                    if coffeeAmount == 1 {
                        Text("1 cup")
                    } else {
                        Text("\(coffeeAmount) cups")
                    }
                }
                
            }
            .navigationBarTitle("BetterRest")
            .navigationBarItems(trailing:
                Button(action: calculateBedTime){
                    Text("Calculate bed time")
                }
            )
        }
    }
        
        
        
//        let formatter = DateFormatter()
//        formatter.dateStyle = .short
//        let dateString = formatter.string(from: Date())
//        return DatePicker("Please enter a date",selection: $wakeUp,displayedComponents: .hourAndMinute)
//        .labelsHidden()
//            let now = Date()
//            let tomorrow = Date().addingTimeInterval(86400)
//            let range = now ... tomorrow
//            return DatePicker("Please enter a date", selection: $wakeUp,displayedComponents: .hourAndMinute)
//            .labelsHidden()
            
            // when you create a new Date instance it will be set to the current date and time
            
//            Stepper(value: $sleepAmount, in: 4...12,step: 0.25){
//                Text("\(sleepAmount,specifier: "%g") hours")
//            }
//
        
        
//        func calculateBedTime(){
//          let model = SleepCalculator()
//            
//            
//        }
//        
        
        
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
