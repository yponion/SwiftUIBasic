//
//  PickerBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/13.
//

import SwiftUI

struct PickerBasic: View {
    // property
    let typeOfPhone : [String] = [
        "애플", "삼성", "샤오미", "기타 브랜드"
    ]
    
    @State var selectedIndex: Int = 0
    
    var body: some View {
        NavigationView{
            Form {
                Section{
                    Picker(selection: $selectedIndex) {
                        ForEach(0..<typeOfPhone.count, id: \.self){ index in
                            Text(typeOfPhone[index])
                        } // : Loop
                    } label: {
                        Text("기종 선택")
                    } // : Picker
                    .pickerStyle(.segmented) // .automatic .menu .wheel .segmented
                } //: Section
                
                Text("핸드폰 제조사는 \(typeOfPhone[selectedIndex]) 입니다")
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
            } // : Form
            .navigationTitle("현재 사용중인 핸드폰 기종은?")
            .navigationBarTitleDisplayMode(.inline)
        }// : NavigationView
    }
}

#Preview {
    PickerBasic()
}
