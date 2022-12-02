//
//  CapsuleButton.swift
//  Birthday
//
//  Created by Renato Oliveira Fraga on 11/29/22.
//

import SwiftUI

struct CapsuleButton: View {
    
    @State var buttonTitle: String
    
    var body: some View {
        Text(buttonTitle)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(Color.accentColor)
            .cornerRadius(50)
            .shadow(color: .gray, radius: 5, x: 2, y: 2)
    }
}

struct CapsuleButton_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleButton(buttonTitle: "Add a new friend")
    }
}
