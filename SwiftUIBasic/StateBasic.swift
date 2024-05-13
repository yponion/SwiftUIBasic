//
//  StateBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/10.
//

import SwiftUI

struct StateBasic: View {
    // property
    @State var backgroundColor: Color=Color.green
    @State var myTitle: String = "아직 버튼 안눌림"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack(spacing:20){
                Text(myTitle)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("카운트: \(count)")
                
                HStack(spacing:20){
                    Button {
                        // action
                        self.backgroundColor = .red // state는 self. 써도되고 생략해도 됨
                        self.myTitle = "1번 버튼 눌림"
                        self.count += 1
                    } label: {
                        Text("1번 버튼")
                    }
                    
                    Button {
                        // action
                        backgroundColor = .purple
                        myTitle = "2번 버튼 눌림"
                        count -= 1
                    } label: {
                        Text("2번 버튼")
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBasic()
}
