//
//  InitEnumBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/08.
//

import SwiftUI

struct InitEnumBasic: View {
    
    // 변수 선언
    let backgroundColor: Color
    let count: Int
    let title: String
    
    // enum 생성
    enum Fruit {
        case apple
        case orange
    }
    
    // init 함수 생성
    init(count: Int, fruit: Fruit){
        self.count = count
        
        if fruit == .apple{
            self.title = "사과"
            self.backgroundColor = .red
        }else{
            self.title = "오렌지"
            self.backgroundColor = .orange
        }
    }
    
    var body: some View {
        VStack(spacing:20){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack{
        InitEnumBasic(count: 100, fruit: .apple)
        InitEnumBasic(count: 46, fruit: .orange)
    }
}
