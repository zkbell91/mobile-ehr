//
//  ContentView.swift
//  Mobile EHR
//
//  Created by Zachary Bell on 1/31/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingLogin = false

    var body: some View {
        NavigationView {
            
            VStack {
                
                HStack {
                    Button(action: {
                        // Action for the hamburger menu
                    }) {
                        Image(systemName: "line.horizontal.3")
                            .resizable()
                            .frame(width: 20, height: 15)
                    }
                    .padding()
                    
                    Spacer()

                    Button(action: {
                        self.isShowingLogin = true
                    }) {
                        Text("Login")
                    }
                    .padding()
                    .sheet(isPresented: $isShowingLogin) {
                        LoginView()
                    }
                }

                List {
                    NavigationLink(destination: DetailView()) {
                        Text("Insurance ID")
                    }
                    NavigationLink(destination: DetailView()) {
                        Text("Driver's License")
                    }
                    NavigationLink(destination: DetailView()) {
                        Text("Contract")
                    }
                }
                .navigationBarTitle("Mobile EHR", displayMode: .inline)
            }
        }
    }
}
 


struct DetailView: View {
    var body: some View {
        Text("Detail View")
            .navigationBarTitle("Detail")
    }
}

struct LoginView: View {
    var body: some View {
        Text("Login View")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}
