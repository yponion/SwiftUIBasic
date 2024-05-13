//
//  SliderBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/13.
//

import SwiftUI

struct SliderBasic: View {
    // property
    @State var slidervalue: Double = 3
    @State var color: Color = .blue
    
    var body: some View {
        VStack(spacing:20){
            HStack{
                Text("레벨:")
                Text("\(slidervalue)")
                Text(String(format: "%.0f", slidervalue))
            }//:HStack
            .foregroundColor(color)
            // value 는 항상 float (double)
            // in: 슬라이더의 범위 설정
            // step: 단계 설정 슬라이더가 어떤 단위로 증가 감소 되는지 설정
            // onEditingChanged: 슬라이더 value 가 변경이 되면 처리할 이벤트
            Slider(
                value: $slidervalue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { _ in
                    color = .red
                },
                // 최소, 최대값 라벨
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {Text("라벨")}
            )
            .accentColor(.red)
            .padding()
        }//:VStack
    }
}

#Preview {
    SliderBasic()
}
