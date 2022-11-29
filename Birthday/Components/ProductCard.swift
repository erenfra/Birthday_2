//
//  ProductCard.swift
//  Birthday
//
//  Created by Renato Oliveira Fraga on 11/28/22.
//

import SwiftUI

struct ProductCard: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image("Cupcake")
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 130)
                    .scaledToFit()
                    
                VStack(alignment: .center) {
                    Text("Cupcake")
                        .bold()
                    Text("$ 3.00")
                        .font(.caption)
                }
                .padding()
                .frame(width: 250, alignment: .center)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 250, height: 200)
            .shadow(radius: 3)
            
            Button {
                
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(50)
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard()
    }
}
