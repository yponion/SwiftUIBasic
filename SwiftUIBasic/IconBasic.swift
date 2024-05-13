//
//  IconBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/07.
//

import SwiftUI

struct IconBasic: View {
    var body: some View {
        VStack(spacing:20){
            Image(systemName:"person.fill.badge.plus")
                .resizable()
            // rendermode 에서 original 로 하게 되면 실제 color 에서 multi color로 변경되게 됩니다.
            // 즉 고유값 컬러로 변경되어서 color 를 변경하더라도 변경되지 않는 컬러 값이 됩니다.
                .renderingMode(.original)
                .scaledToFill()
                .foregroundColor(.red)
                .frame(width: 300, height: 300)
        }
    }
}

#Preview {
    IconBasic()
}
