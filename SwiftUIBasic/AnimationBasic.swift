//
//  AnimationBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/12.
//

import SwiftUI

struct AnimationBasic: View {
    // property
    @State var isAnimated: Bool = false
    
    let timing: Double = 5.0
    
    var body: some View {
        
        // 1번 View
//        VStack {
//            Button {
//                withAnimation(
//                    .default
////                        .repeatCount(5)
////                        .repeatForever()
////                        .delay(1.0)
//                ){
//                    isAnimated.toggle()
//                }
//            } label: {
//                Text("Button")
//            }
//
//            Spacer()
//
//            RoundedRectangle(cornerRadius: isAnimated ? 50 : 0)
//                .fill(isAnimated ? .red : .green)
//                .frame(
//                    width: isAnimated ? 100 : 300,
//                    height: isAnimated ? 100 : 300
//                )
//                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
//                .offset(y: isAnimated ? 300 : 0)
//
//            Spacer()
//        }
        
        // 2번 View - Speed에 따른 animation
//        VStack {
//            Button {
//                isAnimated.toggle()
//            } label: {
//                Text("Button")
//            }
//
//            // linear animation : 처음부터 끝까지 속도가 일정합니다
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 350 : 50, height: 100)
//                .animation(.linear(duration: timing), value: isAnimated)
//
//            // easeIn animation : 처음에 느렸다가 끝에 빨라지는 효과입니다
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 350 : 50, height: 100)
//                .animation(.easeIn(duration: timing), value: isAnimated)
//
//            // easeOut animation : 처음에 빨랐다가 끝에 느려지는 효과입니다
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 350 : 50, height: 100)
//                .animation(.easeOut(duration: timing), value: isAnimated)
//
//            // easeInOut animation : 처음과 끝에 느려지고, 중간부분이 빨라지는 효과입니다
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 350 : 50, height: 100)
//                .animation(.easeInOut(duration: timing), value: isAnimated)
//        }
        
        // 3번 View - Spring animation
        VStack {
            Button {
                // response: 단일 진동을 완료하는 데 걸리는 시간
                // demping: 얼마나 빠르게 스프링이 정지하는 속도제어. 만약 0일때 멈추지 않음. 0 ~ 1.0
                // blenDuration: 다른 애니메이션 간의 전활 길이 제어
                withAnimation(.spring(
                    response: 0.5,
                    dampingFraction: 0.5,
                    blendDuration: 0)) {
                        isAnimated.toggle()
                    }
            } label: {
                Text("Button")
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
        }
            
    }
}

#Preview {
    AnimationBasic()
}
