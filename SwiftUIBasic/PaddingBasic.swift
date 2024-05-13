//
//  PaddingBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/07.
//

import SwiftUI

struct PaddingBasic: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            // 1.Padding 기본
            Text("Hello World!")
                .background(.yellow)
                .padding() // .padding(.all, 15)
                .padding(.leading, 20) // CSS 기준 padding
                .background(.blue)
                .padding(.bottom, 20) // CSS 기준 margin
            
            Divider()
            
            // 2.Padding 응용
            Text("Hello World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(.bottom, 20)
            
            Text("안녕하세요 헬로우 월드에 오신 여러분 환영합니다. 안녕하세요 헬로우 월드에 오신 여러분 환영합니다. 안녕하세요 헬로우 월드에 오신 여러분 환영합니다. 안녕하세요 헬로우 월드에 오신 여러분 환영합니다.")
            
        }
        // VStack 범위 밖에서 Padding 설정
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/,
                    x: 10,
                    y: 10
                )
        )
        .padding()
    }
}

#Preview {
    PaddingBasic()
}
