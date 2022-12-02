//
//  RoundButton.swift
//  Birthday
//
//  Created by Renato Oliveira Fraga on 11/29/22.
//

import SwiftUI

struct RoundButton: View {
    @State var roundButtonTitle: String
    var body: some View {
        Text(roundButtonTitle)
            .font(.caption)
            .foregroundColor(.white)
            .padding(5)
            .background(.red)
            .cornerRadius(50)
            .shadow(color: .gray, radius: 5, x: 2, y: 2)
    }
    
}

struct RoundButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundButton(roundButtonTitle: "99")
    }
}
