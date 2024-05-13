//
//  ScrollViewBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/08.
//

import SwiftUI

struct ScrollViewBasic: View {
    var body: some View {
        // 1번 - 세로 스크롤
//        ScrollView(.vertical, showsIndicators: false) {
//            VStack{
//                ForEach(0..<50){index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(height: 300)
//                        .overlay(
//                            Text("\(index) 번")
//                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//                        )
//                }
//            }
//        }
        
        // 2번 - 가로 스크롤
//        ScrollView(.horizontal, showsIndicators: true){
//            HStack{
//                ForEach(0..<50){index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 300,height: 300)
//                        .overlay(
//                            Text("\(index) 번")
//                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//                        )
//
//                }
//            }
//        }
        
        // 3번 - 혼합
        ScrollView{ // 기본값 ScrollView(.vertical, showsIndicators: true){
            LazyVStack{
                ForEach(0..<10){_ in
                    ScrollView(.horizontal, showsIndicators:false){
                        LazyHStack{
                            ForEach(0..<20){_ in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewBasic()
}
