//
//  LazyGridBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/08.
//

import SwiftUI

struct LazyGridBasic: View {
    // LazyVGrid
    // columns 의 갯수를 3개로 설정
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    // LazyHGrid
    // title 을 1000 개 변수를 생성
    // ["목록 1", "목록 2", ..., "목록 1000"] [String]
    let title: [String] = Array(1...1000).map{"목록 \($0)"}
    
    // 화면 그리드형식으로 채워줌
    let layout: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80)),
    ]
    
    var body: some View {
        
//        // 1 - LazyVGrid
//        ScrollView{
//            // Hero 부분 (위에 사진 부분)
//            Rectangle()
//                .fill(.orange)
//                .frame(height: 400)
//            LazyVGrid(
//                columns: columns,
//                alignment: .center,
//                spacing: 6,
//                pinnedViews: [.sectionHeaders]){
//                    // Section 1
//                    Section(header:Text("Section1")
//                        .foregroundColor(.white)
//                        .font(.title)
//                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
//                        .background(.blue)
//                        .padding()
//                    ){
//                        ForEach(0..<20){index in
//                            Rectangle()
//                                .fill(.gray)
//                                .frame(height: 150)
//                                .overlay(
//                                    Text("\(index) 번")
//                                )
//                        }
//                    } //: Section 1
//
//                    // Section 2
//                    Section(header: Text("Section2")
//                        .foregroundColor(.white)
//                        .font(.title)
//                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
//                        .background(.red)
//                        .padding()
//                    ) {
//                        ForEach(0..<20){index in
//                            Rectangle()
//                                .fill(.green)
//                                .frame(height: 150)
//                                .overlay(
//                                    Text("\(index) 번")
//                                )
//                        }
//                    } //: Section 2
//                }
//        }//: 1번
        
        // LazyHGrid
        // ScrollView horizontal
        ScrollView(.horizontal){
            LazyHGrid(rows: layout, spacing: 20) {
                ForEach(title, id:\.self){item in
                    VStack{
                        Capsule()
                            .fill(.yellow)
                            .frame(height: 30)
                        
                        Text(item)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                }
            }
        }
    }
}

#Preview {
    LazyGridBasic()
}
