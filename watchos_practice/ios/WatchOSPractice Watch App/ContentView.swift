//
//  ContentView.swift
//  WatchOSPractice Watch App
//
//  Created by 林 明虎 on 2024/10/03.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var connector = PWPhoneConnector()
    
    var body: some View {
        VStack {
            VStack {
                Text(String(connector.counter))
                    .font(.largeTitle)
                    .foregroundColor(Color.gray)
                    .onTapGesture {
                        connector.counter += 1
                        let data = ["key": connector.counter]
                        PWPhoneConnector.shared.sendMessageToPhone(data)
                    }
                
            }
        }
    }
}
