//
//  TextBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/07.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        // Font 사이즈를 title, body, footnote 등 정하면 reonsive
        VStack(spacing: 20){
            Text("Hello World!")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//                .fontWeight(.semibold)
                .bold()
                .underline(true, color: Color.red)
                .italic()
                .strikethrough(true, color: Color.green)
            
            // 이 방법으로 하게 되면 text 크기를 지정할 수 있습니다. font 12, 40 단점 고정식
            Text("Hello World2".uppercased())
                .font(.system(size: 25, weight: .semibold, design: .serif))
            
            // multiline text alignment
            Text("멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다.")
                .multilineTextAlignment(.leading)
                .foregroundColor(.red)
        }
    }
}

#Preview {
    TextBasic()
}
