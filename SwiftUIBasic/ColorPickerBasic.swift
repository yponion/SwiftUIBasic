//
//  ColorPickerBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/13.
//

import SwiftUI

struct ColorPickerBasic: View {
    // property
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack{
            // background
            backgroundColor.ignoresSafeArea()
            
            ColorPicker(selection: $backgroundColor, supportsOpacity: false) {
                Text("원하는 색을 고르세요")
            }
            .padding()
            .background(.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }//:ZStack
    }
}

#Preview {
    ColorPickerBasic()
}
