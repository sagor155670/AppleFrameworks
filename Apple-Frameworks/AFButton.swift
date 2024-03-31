//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Saiful Islam Sagor on 19/9/23.
//

import SwiftUI

struct AFButton: View {
    
    var title:String
    
    var body: some View {
        Button {
            
        }label:{
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width: 200,height: 50)
                .background(Color.accentColor)
                .foregroundColor(.white)
                .cornerRadius(20)
        }
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Button")
    }
}
