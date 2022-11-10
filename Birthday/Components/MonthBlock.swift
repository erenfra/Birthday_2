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
        ZStack {
            Rectangle()
                .frame(width: .infinity, height: .infinity)
                .cornerRadius(10)
                .foregroundColor(Color(colors.randomElement() ?? "CstLightPurple"))
            Text(monthBox)
                .font(.largeTitle.bold())
                .foregroundColor(.black)
        }
    }
}

struct MonthBlock_Previews: PreviewProvider {
    static var previews: some View {
        MonthBlock(monthBox: "Jan")
    }
}
