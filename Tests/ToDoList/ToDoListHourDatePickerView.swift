//
//  ToDoListHourDatePickerView.swift
//  Tests
//
//  Created by apprenant48 on 03/11/2022.
//

import SwiftUI

struct ToDoListHourDatePickerView: View {
    @State private var date = Date()
        let dateRange: ClosedRange<Date> = {
            let calendar = Calendar.current
            let startComponents = DateComponents(year: 2021, month: 12, day: 15)
            let endComponents = DateComponents(year: 2021, month: 12, day: 30, hour: 23, minute: 59, second: 59)
            return calendar.date(from:startComponents)!
            ...
            calendar.date(from:endComponents)!
        }()
        
    var body: some View {
        HStack{
            DatePicker(
                "Rappel pour le :",
                selection: $date,
                in: dateRange,
                displayedComponents: [.date, .hourAndMinute])
            
                .datePickerStyle(.automatic)
        }
    }
    }

struct ToDoListHourDatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListHourDatePickerView()
    }
}
