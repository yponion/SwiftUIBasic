//
//  BindingChild.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/10.
//

import SwiftUI

struct BindingChild: View {
    // property
    @State var buttonColor: Color = .blue
    @Binding var backgroundColor: Color // 변수값이 같아야함
    @Binding var title: String
    
    var body: some View {
        Button {
            // action
            backgroundColor = .orange
            buttonColor = .pink
            title = "Binding Child View"
        } label: {
            Text("Child View 이동")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }

    }
}

#Preview {
    BindingChild(backgroundColor: .constant(Color.orange), title: .constant("BindingChild"))
}
