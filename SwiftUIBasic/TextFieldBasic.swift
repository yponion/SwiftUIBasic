//
//  TextFieldBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/13.
//

import SwiftUI

struct TextFieldBasic: View {
    // property
    @State var inputText: String = ""
    @State var userNameData: [String] = []
    
    var body: some View {
        NavigationView{
            VStack{
                // TextField 한줄 - 적은양의 text 입력시 사용
//                TextField("최소 2글자 이상 입력", text: $inputText)
////                    .textFieldStyle(.roundedBorder)
//                    .padding()
//                    .background(.gray.opacity(0.3))
//                    .cornerRadius(10)
//                    .font(.headline)
                
                // TextEditor 여러줄 - 긴줄의 text 를 입력할때 사용
                TextEditor(text: $inputText)
                    .frame(height: 250)
                    .colorMultiply(.gray.opacity(0.5))
                
                Button {
                    // 이름이 2글자 이상 일때 saveText 가 되도록 조건 설정
                    if isTextEnough() {
                        saveText()
                    }
                } label: {
                    Text("save".uppercased())
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(isTextEnough() ? .blue : .gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!isTextEnough())

                ForEach(userNameData, id: \.self){ item in
                    Text(item)
                }
                
                Spacer()
            }// : VStack
            .padding()
            .navigationTitle("당신의 이름은?")
        } // : NavigationView
    } // : body
    
    // function
    func isTextEnough() -> Bool {
        // 2개 이상의 텍스트가 되면 true, 아니면 false
        if inputText.count >= 2{
            return true
        }else{
            return false
        }
    }
    
    func saveText(){
        userNameData.append(inputText)
        inputText = ""
    }
}

#Preview {
    TextFieldBasic()
}
