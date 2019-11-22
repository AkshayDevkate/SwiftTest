//
//  ContentView.swift
//  swiftUIcalculator
//
//  Created by Akshay Devkate on 17/11/19.
//  Copyright © 2019 Akshay Devkate. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            //Map
            MapView().frame(height: 300)
            
            
            //Image
            circleImage().offset(y: -130).padding(.bottom,-130)
            
        
            //Text
              VStack(alignment: .leading){
                Text("Hello world")
                       .font(.title)
            
            
            HStack{
            Text("Akshay's home").font(.subheadline)
         
            Text("Udgir").font(.subheadline)
            }
        }.padding(.leading)
   
    }

    }
}
    


    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
    
}



