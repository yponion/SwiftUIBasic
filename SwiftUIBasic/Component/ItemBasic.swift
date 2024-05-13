//
//  ItemBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/10.
//

import SwiftUI

struct ItemBasic: View {
    // property
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

#Preview {
    ItemBasic(title: "사과", count: 1, color: .red)
        .previewLayout(.sizeThatFits)
}
