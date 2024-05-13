//
//  ShapeBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/07.
//

import SwiftUI

struct ShapeBasic: View {
    var body: some View {
        VStack(spacing:20){
            // cicle 원형
            Text("원형")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Circle()
//                .fill(Color.blue)
//                .foregroundColor(.pink)
//                .stroke(Color.red, lineWidth: 20)
//                .stroke(Color.purple, style: StrokeStyle(lineWidth: 30, lineCap: .butt, dash:[30]))
                .trim(from: 0.2, to: 1.0)
                .stroke(.purple, lineWidth: 50)
                .frame(width: 100, height: 50)
                .padding()
            
            // Ellipse 타원형
            Text("타원형")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Ellipse()
                .fill(.green)
                .frame(width: 100, height: 50, alignment: .center)
            
            // 캡슐형
            Text("캡슐형")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Capsule(style: .circular)
                .stroke(.blue, lineWidth: 30)
                .frame(width: 100, height: 50)
            
            // 직사각형
            Text("직사각형")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 50)
            
            // 둥근 직사각형
            Text("둥근 직사각형")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            RoundedRectangle(cornerRadius: 20)
                .trim(from: 0.4, to: 1.0)
                .frame(width: 150, height: 100)
        }
    }
}

#Preview {
    ShapeBasic()
}
