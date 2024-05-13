//
//  ExtractSubViewBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/10.
//

import SwiftUI

struct ExtractSubViewBasic: View {
    var body: some View {
        ZStack{
            // background
            Color.cyan
                .ignoresSafeArea()
            
            // content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            ItemBasic(title: "사과", count: 1, color: .red)
            ItemBasic(title: "오렌지", count: 10, color: .orange)
            ItemBasic(title: "바나나", count: 34, color: .yellow)
        }
    }
}

#Preview {
    ExtractSubViewBasic()
}
