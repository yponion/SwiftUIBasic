//
//  TernaryBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/11.
//

import SwiftUI

struct TernaryBasic: View {
    // property
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            // 1. if else 조건문
            Button{
                isStartingState.toggle()
            }label: {
                Text("if else 버튼: \(isStartingState.description)")
            }
            
            if isStartingState{
                RoundedRectangle(cornerRadius: 25)
                    .fill(.red)
                    .frame(width: 200, height: 100)
            } else {
                RoundedRectangle(cornerRadius: 25)
                    .fill(.blue)
                    .frame(width: 200, height: 100)
            }
            
            // 2. 삼항연산자
            Button {
                isStartingState.toggle()
            } label: {
                Text("삼항연산자 버튼: \(isStartingState.description)")
            }
            
            Text(isStartingState ? "빨강" : "파랑")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? .red : .blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400 : 100
                )

            Spacer()
        }
    }
}

#Preview {
    TernaryBasic()
}
