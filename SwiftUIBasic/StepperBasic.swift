//
//  StepperBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/13.
//

import SwiftUI

struct StepperBasic: View {
    // property
    @State var stepperValue:Int = 0
    @State var widthChange: CGFloat = 0
    
    var body: some View {
        VStack{
            Stepper("기본 Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            Divider()
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthChange, height: 100)
            
            Stepper("직사각형 너비 변화") {
                // + 를 누를때 변화되는것
                differenctWidth(amount: 20)
            } onDecrement:{
                // - 누를때 변화
                differenctWidth(amount: -20)
            }
        }// :VStack
    }
    
    //function
    func differenctWidth(amount: CGFloat){
        withAnimation(.easeInOut){
            widthChange += amount
        }
    }
}

#Preview {
    StepperBasic()
}
