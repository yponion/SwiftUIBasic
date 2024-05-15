//
//  FruitBasicView.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/15.
//

import SwiftUI

struct FruitBasicView: View {
    // property
    
    // @ObservedObject 사용하여 ViewModel 객체화 하기 -> SubView 에서 사용 (부모 View 값을 넘겨 받았을 경우)
    //    @ObservedObject var fruitViewModel = FruitViewModel()
    
    // @StateObject 사용하여 ViewModel 객체화 하기 -> View 가 처음 생성, 초기화 할때, 부모 View 에서 주로 사용
    @StateObject var fruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView{
            List{
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack(spacing:20){
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }//:HStack
                    }//:loop
                }//: conditional
            }//:List
//            .onAppear{
//                fruitViewModel.getFruit()
//            }
            .navigationBarItems(
                trailing: NavigationLink(
                    destination: SecondScreen(fruitViewModel: fruitViewModel),
                    label: {
                        Image(systemName: "arrow.right")
                            .font(.title)
                    }))
            .navigationTitle("과일 리스트")
        }//:NavigationView
    }
}

// SecondScreen

struct SecondScreen: View {
    // property
    @ObservedObject var fruitViewModel = FruitViewModel()
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            // background
            Color.green.ignoresSafeArea()
            
            // foreground
            VStack(spacing:20){
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .font(.headline)
                        .foregroundColor(.white)
                }//:loof
                
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("뒤로 가기")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }

            }//:VStack
        }//:ZStack
    }
}

#Preview {
    FruitBasicView()
}
