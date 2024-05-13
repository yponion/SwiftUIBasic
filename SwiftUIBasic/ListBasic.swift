//
//  ListBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/13.
//

import SwiftUI

struct ListBasic: View {
    //property
    @State var fruits:[String] = [
        "사과", "오렌지", "바나나", "수박"
    ]
    @State var meats:[String] = [
        "소고기", "돼지고기", "닭고기"
    ]
    
    var body: some View {
        NavigationView{
            List{
                Section {
                    // content
                    ForEach(fruits, id: \.self) { fruits in
                        Text(fruits)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                } header: {
                    Text("과일 종류")
                        .font(.headline)
                        .foregroundColor(.brown)
                } // : Section
                
                Section {
                    // content
                    ForEach(meats, id: \.self){ meat in
                        Text(meat)
                    }
                } header: {
                    Text("고기종류")
                        .font(.headline)
                        .foregroundColor(.red)
                }


            } // : List
            .navigationTitle("우리동네 마트")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        } // : NavigationView
    } // : Body
    
    // Function
    func delete(indexSet:IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    func move(indices: IndexSet, newOffset:Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    var addButton: some View{
        Button {
            fruits.append("딸기")
        } label: {
            Text("Add")
        }
    }
}

#Preview {
    ListBasic()
}
