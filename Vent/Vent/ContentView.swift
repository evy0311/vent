//
//  ContentView.swift
//  Vent
//
//  Created by Evan Horsley on 1/23/20.
//  Copyright © 2020 Evan Horsley. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    var body: some View {
        VStack {
            // 2.
            TextField(" Enter your rant", text: $name)
                .border(Color.black)
            Text("Rant entered:")
            // 3.
            Text("\(name)")
        }
        .padding()
        .font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
