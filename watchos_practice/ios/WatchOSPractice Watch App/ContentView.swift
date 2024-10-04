//
//  ContentView.swift
//  WatchOSPractice Watch App
//
//  Created by 林 明虎 on 2024/10/03.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var connector = PWConnector()
    
    var body: some View {
        VStack {
            VStack {
                Text(String(connector.counter))
                    .font(.largeTitle)
                    .foregroundColor(Color.gray)
                
            }
        }
    }
}
