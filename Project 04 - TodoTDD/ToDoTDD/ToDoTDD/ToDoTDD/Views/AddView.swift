//
//  AddView.swift
//  ToDoTDD
//
//  Created by Muktar Hussein on 18/12/2023.
//

import SwiftUI

struct AddView: View {
    @EnvironmentObject var vm: ListVM
    @Environment(\.dismiss) var dismiss
    
    // use this for coredata storage
    /*
     @StateObject var vm = SaveMeetings()
     */
   
        var body: some View {
            NavigationStack {
                VStack(spacing: 20) {
                    TextField("Meeting name", text: $vm.title)
                        .padding(.leading)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(
                          Rectangle()
                            .stroke(lineWidth: 0.3)
                        )
                    
                    TextField("Address", text: $vm.address)
                        .padding(.leading)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(
                          Rectangle()
                            .stroke(lineWidth: 0.3)
                        )
                    
                    TextField("Description", text: $vm.description)
                        .padding(.leading)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(
                          Rectangle()
                            .stroke(lineWidth: 0.3)
                        )
                    
                    VStack(spacing: 0) {
                        Text("Date")
                            .font(.headline)
                        DatePicker("", selection: $vm.date)
                            .datePickerStyle(.wheel)
                    }
                    
                    HStack(spacing: 80) {
                        Button("Cancel", role: .destructive, action: {
                            dismiss()
                            vm.resetFields()
                        })
                        Button("Save", action: {
                            // for coredata
                            /*
                            vm.saveToCoredata()
                             */
                            vm.addMeeting()
                            dismiss()
                        })
                    }
                    .font(.headline.bold())
                }
            }

        }
}

#Preview {
    AddView()
        .environmentObject(ListVM())
}
