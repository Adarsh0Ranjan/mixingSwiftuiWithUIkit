//
//  SwiftUIView2.swift
//  StoryboardAndSwiftuiMixing
//
//  Created by Roro Solutions on 15/06/23.
//

import SwiftUI

struct SwiftUIView2: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, World!")
                Button("Dismiss") {
                    presentationMode.wrappedValue.dismiss()
                }

                NavigationLink(destination: NewView()) {
                    Text("Go to New View")
                }
            }
            .navigationBarTitle("SwiftUI View")
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: backButton)
        }
    }

    private var backButton: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "chevron.left")
                .imageScale(.large)
                .foregroundColor(.blue)
        }
    }
}




struct SwiftUIView2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView2()
    }
}



struct NewView: View {
    @State private var isPresentingNewView = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("This is the new view")
            Button("Present New View") {
                isPresentingNewView = true
            }
            Button("Dismiss") {
                presentationMode.wrappedValue.dismiss()
            }
        }
        .sheet(isPresented: $isPresentingNewView, onDismiss: {
            // Optional: Perform actions when the presented view is dismissed
        }) {
            PresentedView()
        }
    }
}

struct PresentedView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Presented View")
            Button("Dismiss") {
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}


