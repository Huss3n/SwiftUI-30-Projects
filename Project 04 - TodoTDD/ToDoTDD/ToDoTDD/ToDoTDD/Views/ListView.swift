//
//  ListView.swift
//  ToDoTDD
//
//  Created by Muktar Hussein on 18/12/2023.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var vm: ListVM
    @State private var addView: Bool = false
    var body: some View {
        NavigationStack {
            ZStack {
                if vm.meetings.isEmpty {
                    Text("You have no meetings today")
                }else  {
                    List {
                        ForEach(vm.meetings){ meeting in
                            ListRow(title: meeting.title, address: meeting.address, date: meeting.date)
                        }
                    }
                    .listStyle(.plain)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "plus")
                        .bold()
                        .foregroundStyle(.blue)
                        .onTapGesture {
                            addView.toggle()
                        }
                }
            }
            .fullScreenCover(isPresented: $addView, content: {
                AddView()
            })
        }
    }
}

#Preview {
    ListView()
        .environmentObject(ListVM())
}
