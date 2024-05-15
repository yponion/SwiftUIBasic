//
//  UserModelBasicView.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/15.
//

import SwiftUI

struct UserModelBasicView: View {
    // property
    @State var users: [UserModel] = [
        UserModel(displayName: "철수", userName: "철수123", followerCount: 100, isChecked: true),
        UserModel(displayName: "영희", userName: "영희사랑", followerCount: 55, isChecked: false),
        UserModel(displayName: "길동", userName: "홍길동", followerCount: 300, isChecked: false),
        UserModel(displayName: "한나", userName: "황한나", followerCount: 80, isChecked: true),
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in // id 지정 안하는게 모델 만들때 이미 uuid 넣었기 때문에
                    HStack(spacing:20){
                        // uuid 출력하기
//                        Text(user.id)
                        
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack(alignment: .leading, spacing: 5){
                            Text(user.displayName)
                                .font(.headline)
                            
                            Text("@\(user.userName)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }//:VStack
                        
                        Spacer()
                        
                        if user.isChecked {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack{
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }//:VStack
                    }//:HStack
                    .padding(.vertical, 10)
                }//:ForEach
            }//:List
            .navigationTitle("회원 리스트")
        }//:NavigationView
    }
}

#Preview {
    UserModelBasicView()
}
