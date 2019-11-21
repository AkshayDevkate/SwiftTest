//
//  circleImage.swift
//  swiftUIcalculator
//
//  Created by Akshay Devkate on 21/11/19.
//  Copyright © 2019 Akshay Devkate. All rights reserved.
//

import SwiftUI

struct circleImage: View {
    var body: some View {
        
        Image("akshay").resizable().clipShape(Circle())
                .frame(width: 155, height: 155)
                       
     
        
        
            
            
    }
}

struct circleImage_Previews: PreviewProvider {
    static var previews: some View {
        circleImage()
    }
}
