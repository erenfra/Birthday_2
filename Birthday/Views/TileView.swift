//
//  TileView.swift
//  Birthday
//
//  Created by Renato Oliveira Fraga on 11/24/22.
//

import SwiftUI

struct TileView: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            MonthBlock(monthBox: "Feb")
            ZStack{
                Circle()
                    .frame(width: 30, height: 30, alignment: .topTrailing)
                    .foregroundColor(.red)
                Text("99")
                    .font(.headline.bold())
                    .foregroundColor(.white)
                    //.padding()
            }//.padding()
        }
    }
}

struct TileView_Previews: PreviewProvider {
    static var previews: some View {
        TileView()
    }
}
