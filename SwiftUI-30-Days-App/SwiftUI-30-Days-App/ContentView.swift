//
//  ContentView.swift
//  SwiftUI-30-Days-App
//
//  Created by Jaehwa Noh on 12/1/23.
//

import SwiftUI

struct ContentView: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "EastSeaDokdo-Regular", size: 32) ?? UIFont()]
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "EastSeaDokdo-Regular", size: 24) ?? UIFont()]
    }
    
    var body: some View {
        NavigationStack {
            BookContentList()
                .navigationTitle("다이아몬드는 개똥밭에 굴러도 다이아몬드이다")
                .navigationBarTitleDisplayMode(.large)
        }
        
    }
}

#Preview {
    ContentView()
}
