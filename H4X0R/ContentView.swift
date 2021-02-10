//
//  ContentView.swift
//  H4X0R
//
//  Created by William Downing on 2/9/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) {post in
                Text(post.title)
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        onAppear(perform: {
            networkManager.fetchData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




