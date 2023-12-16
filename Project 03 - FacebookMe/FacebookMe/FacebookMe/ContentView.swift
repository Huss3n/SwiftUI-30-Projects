//
//  ContentView.swift
//  FacebookMe
//
//  Created by Muktar Hussein on 16/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var logout: Bool = false
    
    var body: some View {
        NavigationStack {
                List {
                    Section {
                        NavigationLink {
                                Image("images")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(20)
                            
                            HStack {
                                Text("Name:")
                                Text("BayMax")
                            }
                        } label: {
                            HStack {
                                Image("images")
                                    .resizable()
                                    .frame(width: 70, height: 70)
                                
                                VStack(alignment: .leading) {
                                    Text("BayMax")
                                        .font(.title3)
                                    
                                    Text("View your profile")
                                        .font(.callout)
                                }
                            }
                        }

                    }
                    
                    Section {
                        NavigationLink {
                            Text("Friends")
                        } label: {
                            ListRow(image: "person.2.fill", name: "Friends")
                        }

                        
                        NavigationLink {
                            Text("Events")
                        } label: {
                            ListRow(image: "calendar", name: "Events")
                        }

                        
                        NavigationLink {
                            Text("Groups")
                        } label: {
                            ListRow(image: "person.3.fill", name: "Groups")
                        }

                        
                        NavigationLink {
                            Text("CMU")
                        } label: {
                            ListRow(image: "graduationcap.fill", name: "CMU")
                        }

                        
                        NavigationLink {
                            Text("Town Hall")
                        } label: {
                            ListRow(image: "house.fill", name: "Town Hall")
                        }

                        NavigationLink {
                            Text("Instant games")
                        } label: {
                            ListRow(image: "gamecontroller.fill", name: "Instant games")
                        }

                        
                        Text("See More..")
                            .foregroundStyle(.blue)
                            .padding(.leading, 30)
                        
                        
                    }
                    Section("Favorites") {
                        Text("Add Favorites...")
                            .foregroundStyle(.blue)
                            .padding(.leading, 30)
                    }
                    
                    Section {
                        NavigationLink {
                            Text("Settings")
                        } label: {
                            ListRow(image: "gearshape.fill", name: "Settings")
                        }

                        NavigationLink {
                            Text("Prvacy and Safety")
                        } label: {
                            ListRow(image: "lock.fill", name: "Prvacy and Safety")
                        }

                        NavigationLink {
                            Text("Help and Support")
                        } label: {
                            ListRow(image: "questionmark", name: "Help and Support")
                        }

                    }
                    Section {
                        VStack(alignment: .center) {
                            Button("Logout", role: .destructive, action: {logout.toggle()})
                                .padding(.leading, UIScreen.main.bounds.width / 3)
                        }
                    }
                }
                .navigationTitle("Facebook")
                .navigationBarTitleDisplayMode(.inline)
                .alert("Logout?", isPresented: $logout) {
                    Button("Cancel", role: .cancel, action: {})
                    Button("Yes", role: .destructive, action: {})
                }message: {
                    Text("Are you sure you want to logout")
                }
            
        }
    }
}

#Preview {
    ContentView()
}
