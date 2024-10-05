//
//  SecondView.swift
//  Runner
//
//  Created by 林 明虎 on 2024/10/05.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("Second View")
            
            Button(action: {
                dismiss()  // 画面を閉じて戻る
            }) {
                Text("Back to First View")
            }
        }
    }
}

