//
//  IOSDeviceViewModel.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/15.
//

import Foundation

class IOSDeviceViewModel: ObservableObject {
    
    // property
    @Published var iOSDeviceArray: [IOSDeviceModel] = []
    
    // init
    init(){
        getData()
    }
    
    // function
    func getData(){
        
        // 값 선언
        let iphone = IOSDeviceModel(name: "아이폰")
        let iPad = IOSDeviceModel(name: "아이패드")
        let iMac = IOSDeviceModel(name: "아이맥")
        let appleWatch = IOSDeviceModel(name: "애플워치")
        
        // 값 넣기
        self.iOSDeviceArray.append(iphone)
        self.iOSDeviceArray.append(iPad)
        self.iOSDeviceArray.append(iMac)
        self.iOSDeviceArray.append(appleWatch)
    }
}
