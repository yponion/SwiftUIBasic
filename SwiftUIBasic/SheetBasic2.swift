//
//  SheetBasic2.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/12.
//

import SwiftUI

struct SheetBasic2: View {
    
    // property
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading){
            
            // background
            Color.red.ignoresSafeArea()
            
            // contents
            Button {
                // Sheet 닫기 action
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            }

        }
    }
}

#Preview {
    SheetBasic2()
}
