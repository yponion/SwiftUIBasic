//
//  SheetBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/12.
//

import SwiftUI

struct SheetBasic: View {
    // property
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack{
            // Background
            Color.green
                .ignoresSafeArea()
            
            // Content
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
            }
            
//            .sheet(isPresented: $showSheet) {
//                SheetBasic2()
//            }
            .fullScreenCover(isPresented: $showSheet){
                SheetBasic2()
            }

        }
    }
}

#Preview {
    SheetBasic()
}
