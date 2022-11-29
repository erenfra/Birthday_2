//
//  MonthBlock.swift
//  Birthday
//
//  Created by Renato Oliveira Fraga on 11/9/22.
//

import SwiftUI

struct MonthBlock: View {
    @State var monthBox: String
    let colors = ["CstLightYellow","CstLightPurple","CstLightGreen","CstLightBlue"]
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack {
                Rectangle()
                    //.frame(maxWidth: 100, maxHeight: 100)
                    .cornerRadius(20)
                    .foregroundColor(Color(colors.randomElement() ?? "CstLightPurple"))
                    //.shadow(color: .black, radius: 5, x: 0, y: 3)
                Text(monthBox)
                    .font(.largeTitle.bold())
                    .foregroundColor(.black)
                    
            }
            
            Text("99")
                .font(.caption)
                .padding(5)
                .foregroundColor(.white)
                .background(.red)
                .cornerRadius(50)
        }
    }
}

struct MonthBlock_Previews: PreviewProvider {
    static var previews: some View {
        MonthBlock(monthBox: "Jan")
    }
}
