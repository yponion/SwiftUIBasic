//
//  NavigationBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/13.
//

import SwiftUI

struct NavigationBasic: View {
    
    // property
    @State var showSheet: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink {
                    // destination : 목적지 -> 어디로 페이지 이동할꺼냐
                    SecondNavigationView()
                } label: {
                    Text("Second Navigation 이동")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .background(.blue)
                        .cornerRadius(10)
                }
            } // : VStack
            // navigationTitle - 상단에 페이지 제목
            .navigationTitle("페이지 제목")
            // navigationBarTitleDisplayMode - 상단 페이지 제목 스타일
            // .automatic: 자동, inline: 상단에 작게, large: leading 쪽으로 크게
            .navigationBarTitleDisplayMode(.large)
            // navigationBarHidden - 네비게이션 타이틀, 바를 감추는 거임
//            .navigationBarHidden(true)
            
            // navigationBarItems 상단 좌우에 icon, text, button 을 사용해서 나타낼 수 있음
            .navigationBarItems(
                leading: Image(systemName: "line.3.horizontal"),
                trailing: Button(action: {
                    showSheet.toggle()
                }, label: {
                    Image(systemName: "gear")
                }))
        } // : NavigationView
        .sheet(isPresented: $showSheet){
            ZStack{
                // background
                Color.green.ignoresSafeArea()
                
                // content
                Text("설정 페이지 입니다")
                    .font(.largeTitle)
            }
        }
    }
}

#Preview {
    NavigationBasic()
}
