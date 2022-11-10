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
        
        HStack {
            VStack(alignment: .leading, spacing: 7) {
                Text(name)
                    .font(.body)
                    
                    .padding(.horizontal)
                Text("\(age) years old")
                    .font(.subheadline.bold())
                    .foregroundColor(.gray)
                    .padding(.horizontal)
            }
            Spacer()
            ZStack {
                Circle()
                    
                    .frame(width: 40)
                    .foregroundColor(.mint)
                    
                    
                Text(day)
                    .font(.title2.bold())
                    .foregroundColor(.white)
            }
                
        }
    }
}

struct DetailRow_Previews: PreviewProvider {
    static var previews: some View {
        DetailRow(name: "Renato Oliveira Fraga", day: "16", age: "48")
    }
}
