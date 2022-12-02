//
//  DetailRow.swift
//  Birthday
//
//  Created by Renato Oliveira Fraga on 11/9/22.
//

import SwiftUI

struct DetailRow: View {
    @State var name: String
    @State var day: String
    @State var age: String
    
 
    
    var body: some View {
        
        HStack(spacing: 10) {
            VStack(alignment: .leading, spacing: 7) {
                Text(name)
                    .font(.body)
                    
                    .padding(.horizontal)
                Text("\(age) years old")
                    .font(.subheadline.bold())
                    .foregroundColor(.gray)
                    .padding(.horizontal)
            }
            ZStack {
                    
                Text(day)
                    .font(.title2.bold())
                    .padding(10)
                    .foregroundColor(.white)
                    .background(Color.accentColor)
                    .cornerRadius(50)
            }
                
        }
        .frame(width: .infinity)
        .padding()
        //.padding(.horizontal, 10)
        .background(.ultraThinMaterial)
        .cornerRadius(100)

        
    }
}

struct DetailRow_Previews: PreviewProvider {
    static var previews: some View {
        DetailRow(name: "Renato Oliveira Fraga", day: "16", age: "48")
    }
}
