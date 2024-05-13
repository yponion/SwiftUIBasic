//
//  onTabGestureBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/13.
//

import SwiftUI

struct onTabGestureBasic: View {
    // property
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing:40){
            // Rectangle 박스
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? .green : .red)
            
            // 1. 일반적인 Button
            Button {
                isSelected.toggle()
            } label: {
                Text("1. 일반적인 Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(.blue)
                    .cornerRadius(25)
            }
            
            // 2. onTabGesture 한번 클릭시 실행
            Text("2. onTabGuesture 한번 클릭")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(.blue)
                .cornerRadius(25)
                .onTapGesture {
                    isSelected.toggle()
                }
            
            // 3. onTabGesture 두번 클릭시 실행
            Text("3. onTabGuesture 두번 클릭")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(.blue)
                .cornerRadius(25)
                .onTapGesture(count:2) {
                    isSelected.toggle()
                }
            
            Spacer()

        }//:VStack
        .padding(40)
    }//:body
}

#Preview {
    onTabGestureBasic()
}
