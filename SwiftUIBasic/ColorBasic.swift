//
//  ColorBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/07.
//

import SwiftUI

struct ColorBasic: View {
    var body: some View {
        VStack(spacing:20){
            // Basic Color
            Text("Basic Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.purple)
                .frame(width: 300, height: 100)
            
            // Primary Color
            // 자동으로 색 다크모드 지원
            Text("Primary Color")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.primary)
//                .fill(Color.secondary)
                .frame(width: 300,height: 100)
            
            // UI Color
            // UIkit 에서 사용되는 color 값을 사용할 수 있습니다.
            Text("UI Color")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(UIColor.secondarySystemBackground))
                .frame(width: 300,height: 100)
            
            // Custom Color
            // Asset 에서 Color set 을 미리 정의한 색 을 사용할 수 있습니다.
            Text("Custom Color")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color("CustomColor"))
                .frame(width: 300, height: 100)
            
        }
    }
}

#Preview {
    ColorBasic()
//        .preferredColorScheme(.dark)
}
