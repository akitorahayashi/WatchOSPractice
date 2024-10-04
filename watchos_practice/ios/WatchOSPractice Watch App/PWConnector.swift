//
//  PWConnector.swift
//  Runner
//
//  Created by 林 明虎 on 2024/10/04.
//

import SwiftUI
import WatchConnectivity


class PWConnector: NSObject, ObservableObject, WCSessionDelegate  {
    @Published var counter = 0
    
    override init() {
        super.init()
        if WCSession.isSupported() {
            WCSession.default.delegate = self
            
            WCSession.default.activate()
        }
    }
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        print("activationDidCompleteWith state= \(activationState.rawValue)")
    }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        print("didReceiveMessage: \(message)")
        
        //受け取ったメッセージからcountを取り出す。
        let receivedCount = message["count"] as! String
        
        if let resultOfCount = Int(receivedCount) {
            //結果を画面に反映
            print(resultOfCount)
            DispatchQueue.main.async {
                self.counter = resultOfCount
            }
        }
        
    }
}
