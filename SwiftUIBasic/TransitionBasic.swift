//
//  TransitionBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/12.
//

import SwiftUI

struct TransitionBasic: View {
    // prperty
    @State var showTransition: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button {
                    withAnimation(.easeInOut){
                        showTransition.toggle()
                    }
                } label: {
                    Text("Button")
                }
                
                Spacer()
            }
            
            if showTransition {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height*0.5)
                    .opacity(showTransition ? 1.0 : 0.0)
                
                // 1번 move transition
//                    .transition(.move(edge: .bottom))
                
                // 2번 opacity transition
//                    .transition(.opacity)
                
                // 3번 scale transition
//                    .transition(.scale)
                
                // 4번 asymmetric transition - 시작점 끝나지점 custom 해주기 땜ㄴ에 비대칭 transition
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: .move(edge: .trailing)))
            }
        }
        .ignoresSafeArea(edges: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    TransitionBasic()
}
