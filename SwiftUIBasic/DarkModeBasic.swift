//
//  DarkModeBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/13.
//

import SwiftUI

struct DarkModeBasic: View {
    // property
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing:20){
                    // primary and secondary color 는 자동으로 다크모드일때 색 변환 됨
                    Text("Primary 색상")
                        .foregroundColor(.primary)
                    Text("Secondary 색상")
                        .foregroundColor(.secondary)
                    // 일반적인 black, white 는 고정 값임
                    Text("Black Color")
                        .foregroundColor(.black)
                    Text("White Color")
                        .foregroundColor(.white)
                    Text("Red Color")
                        .foregroundColor(.red)
                    // Asset 에서 adaptive 라는 이름의 color Set 을 만든 후 light, dark mode 에서 설정해줄 수 있음
                    Text("Asset 에서 Adaptive 색 설정")
                        .foregroundColor(Color("AdaptiveColor"))
                    // @Environment 사용해서 colorScheme 사용하기
                    Text("@Environment 사용해서 Adaptive 색 설정")
                        .foregroundColor(colorScheme == .light ? .green : .blue)
                }
            }//:ScrollView
        }//:NavigationView
    }
}

#Preview {
    DarkModeBasic()
}
