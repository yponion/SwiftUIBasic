//
//  BindingBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/10.
//

import SwiftUI

struct BindingBasic: View {
    // property
    @State var backgroundColor: Color = .green
    @State var title: String = "Binding Basic View"
    
    var body: some View {
        ZStack{
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack{
                Text(title)
                
                // button
                // parameter 로 @State 의 값에 $ 붙여 줍니다
                BindingChild(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

#Preview {
    BindingBasic()
}
