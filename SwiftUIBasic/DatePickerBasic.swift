//
//  DatePickerBasic.swift
//  SwiftUIBasic
//
//  Created by yp on 2024/05/13.
//

import SwiftUI

struct DatePickerBasic: View {
    // property
    @State var SelcectedDate1:Date = Date()
    @State var SelcectedDate2:Date = Date()
    @State var SelcectedDate3:Date = Date()
    @State var SelcectedDate4:Date = Date()
    @State var SelcectedDate5:Date = Date()
    
    // 현재 시간 String 으로 화면에 나타내기
    var currentDate: String{
        // Date() 하면 오늘 날짜 시간 불러오기
        let current = Date()
        let formater = DateFormatter()
        
        // 한국 시간으로 표시
        formater.locale = Locale(identifier: "ko_kr") // 날짜와 시간
        // formater.timeZone = TimeZone(abbreviation: "KST") // 한국 시간대
        
        // 형태 변환
        formater.dateFormat = "yyyy년 MM월 dd일 a HH시 mm분"
        formater.amSymbol = "오전"
        formater.pmSymbol = "오후"
        
        // String 타입으로 변환 해서 return
        return formater.string(from: current)
    }
    
    // DatePicker 용 DateFormatter
    var dateFormatter: DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            VStack(spacing:20){
                Text("현재시간: \(currentDate)")
                
                Divider()
                
                // 기본 DatePicker
                VStack{
                    DatePicker("기본 DatePicker", selection: $SelcectedDate1)
                        .accentColor(.red)
                        .datePickerStyle(.compact)
                    Text("선택된 날짜는 \(dateToKR(selectedDate:SelcectedDate1))")
                }
                
                Divider()
                
                // 달력형태 picker
                VStack{
                    DatePicker("달력", selection: $SelcectedDate2)
                        .datePickerStyle(.graphical)
                    Text("선택된 날짜는 \(dateToKR(selectedDate:SelcectedDate2))")
                }
                
                Divider()
                
                // 휠 스타일 picker
                VStack{
                    DatePicker("휠", selection: $SelcectedDate3)
                        .datePickerStyle(.wheel)
                    Text("선택된 날짜는 \(dateToKR(selectedDate:SelcectedDate3))")
                }
                
                Divider()
                
                // 휠 스타일 picker, 시간만 선택
                VStack{
//                    DatePicker("날짜만 선택", selection: $SelcectedDate4, displayedComponents: [.date])
                    DatePicker("시간만 선택", selection: $SelcectedDate4, displayedComponents: [.hourAndMinute])
                    Text("선택된 날짜는 \(dateToKR(selectedDate:SelcectedDate4))")
                }
                
            }//:VStack
            .padding()
        }//:ScrollView
    }//:body
    
    // function
    func dateToKR(selectedDate:Date)->String{
        // Date() 하면 오늘 날짜 시간 불러오기
        let formater = DateFormatter()
        
        // 한국 시간으로 표시
        formater.locale = Locale(identifier: "ko_kr") // 날짜와 시간
        // formater.timeZone = TimeZone(abbreviation: "KST") // 한국 시간대
        
        // 형태 변환
        formater.dateFormat = "yyyy년 MM월 dd일 a HH시 mm분"
        formater.amSymbol = "오전"
        formater.pmSymbol = "오후"
        
        // String 타입으로 변환 해서 return
        return formater.string(from: selectedDate)
    }
}

#Preview {
    DatePickerBasic()
}
