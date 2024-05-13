//
//  ToggleBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/13.
//

import SwiftUI

struct ToggleBasic: View {
    // property
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack{
            HStack{
                Text("로그인 상태:")
                Text(toggleIsOn ? "온라인" : "오프라인")
            } // : HStack
            Toggle(
                isOn: $toggleIsOn) {
                    Text("로그인 상태 선택")
                } // : Toggle
                .toggleStyle(SwitchToggleStyle(tint: .red)) // 색상 변경
            Spacer()
        } // : VStack
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBasic()
}
