//
//  AppStorageBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/16.
//

import SwiftUI

struct AppStorageBasic: View {
    
    // property
    // 일반적인 Data
    @State var generalName: String?
    
    // App Storage 을 사용하면 앱을 다시 열때 자동으로 키에서 이름을 가져옵니다
    @AppStorage("name") var appStorageName: String? // key 하고싶은걸로 설정(name)
    
    var body: some View {
        VStack(spacing:20){
            // 일반적인 State
            VStack(spacing:10){
                Text("@State 로 저장")
                    .font(.headline)
                
                Text(generalName ?? "당신의 이름은 무엇인가요?")
                
                Button {
                    generalName = "Jacob"
                } label: {
                    Text("이름 불러오기")
                }

            }//:VStack
            .padding()
            .border(.green)
            
            // @AppStorage 사용
            VStack(spacing:10){
                Text("@AppStorage 로 저장")
                    .font(.headline)
                
                Text(appStorageName ?? "당신의 이름은 무엇인가요?")
                
                Button {
                    appStorageName = "Jacob"
                } label: {
                    Text("이름 불러오기")
                }
            }//:VStack
            .padding()
            .border(.red)
        }//:VStack
    }//:body
}

#Preview {
    AppStorageBasic()
}
