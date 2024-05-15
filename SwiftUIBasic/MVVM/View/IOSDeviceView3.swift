//
//  IOSDeviceView3.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/16.
//

import SwiftUI

struct IOSDeviceView3: View {
    
    // property
    // @StateObject 에서 선언한 viewModel 을 @EnvironmentObject 를 통해 가져오기
    @EnvironmentObject var viewModel: IOSDeviceViewModel
    
    var body: some View {
        ZStack{
            // background
            Color.cyan.ignoresSafeArea()
            
            ScrollView{
                VStack (spacing:20){
                    ForEach(viewModel.iOSDeviceArray){ item in
                        Text(item.name)
                    }//:ForEach
                }//:VStack
                .foregroundColor(.white)
                .font(.largeTitle)
            }//:ScrollView
        }//:ZStack
    }//:body
}

#Preview {
    IOSDeviceView3()
        .environmentObject(IOSDeviceViewModel()) // 안쓰면 오류남
}
