//
//  IgnoreSafeAreaBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/08.
//

import SwiftUI

struct IgnoreSafeAreaBasic: View {
    var body: some View {
        
        // 1번 화면
//        ZStack{
//            // background
//            Color.blue
//                .ignoresSafeArea() // 기본값 .all edges: .top, .bottom 가능
//
//            // content
//            VStack{
//                Text("Hello World!")
//                    .font(.largeTitle)
//            }
//        }
        
        ScrollView {
            VStack{
                Text("박스형 리스트")
                    .font(.largeTitle)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
                ForEach(1..<11){ index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding()
                        .overlay(
                            Text("\(index) 번 리스트")
                        )
                }
            }
        }
        .background(
            Color.blue
                .ignoresSafeArea()
        )
    }
}

#Preview {
    IgnoreSafeAreaBasic()
}
