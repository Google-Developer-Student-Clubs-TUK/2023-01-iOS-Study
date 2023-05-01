//
//  DemoData.swift
//  ObservableEnvironment
//
//  Created by 이정동 on 2023/05/01.
//

import Foundation
import Combine

class DemoData: ObservableObject {
    
    @Published var userCount = 0
    @Published var currentUser = ""
    
    init() {
        updateData()
    }
    
    func updateData() {
        
    }
}
