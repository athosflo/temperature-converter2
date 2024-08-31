//
//  ContentView.swift
//  temperature converter 2
//
//  Created by Florian Delphine Aiden on 31/08/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var numberC:Int = 20 //for Picker
    @State private var numberF:Int = 68 //for Picker
    @State private var numbertxt:Int = 0 //for Textfield
    
    var body: some View {
        
        VStack() {
            Text("Select Temperature in C")
                .fontWeight(.heavy)
            Picker("Select Temperature in C", selection: $numberC){
                ForEach(-300...300,id:\.self){
                    numberC in Text("\(numberC)")
                }
          
            }
            Text("It is equal to \(numberC*9/5+32) F")
                .fontWeight(.heavy)
                .foregroundColor(Color.red)
                .padding(.bottom)
              
            
            Text("Select Temperature in F")
                .fontWeight(.heavy)
                .padding(.top, 100.0)
            Picker("Select Temperature in F", selection: $numberF){
                ForEach(-300...300,id:\.self){
                    numberF in Text("\(numberF)")
                        
                }
          
            }
            Text("It is equal to \((numberF-32)*5/9) deg C")
                .fontWeight(.heavy)
                .foregroundColor(Color.red)
            
            // Textfield version
            Text("Select Temperature in C")
                .fontWeight(.heavy)
                .padding(.top, 100.0)
            TextField("Temperature in C",value: $numbertxt, format: .number).textFieldStyle(.roundedBorder)
                .padding()
                .keyboardType(.decimalPad)
                .multilineTextAlignment(.center)
            Text("It is equal to \(numbertxt*9/5+32) F")
                .fontWeight(.heavy)
                .foregroundColor(Color.red)
                .padding(.bottom)
        }
        
        
        


        
        
        
        
        
    }
    }

#Preview {
    ContentView()
}
