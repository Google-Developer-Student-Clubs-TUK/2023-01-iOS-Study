//
//  ContentView.swift
//  ObservableEnvironment
//
//  Created by 이정동 on 2023/05/01.
//

import SwiftUI

struct ContentView: View {
    
    @State private var wifiEnabled = true
    @ObservedObject var demoData: DemoData
    
    var body: some View {
        VStack {
            Toggle("Wifi switch", isOn: $wifiEnabled)
            WifiImageView(wifiEnabled: $wifiEnabled, userInfo: demoData)
            Text("\(demoData.currentUser), you are user number \(demoData.userCount)")
        }
    }
}

struct WifiImageView: View {
    @Binding var wifiEnabled: Bool
    @ObservedObject var userInfo: DemoData
    var body: some View {
        HStack {
            Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
            Text("\(userInfo.userCount)")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(demoData: DemoData())
    }
}
