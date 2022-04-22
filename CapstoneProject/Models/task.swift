//
//  task.swift
//  task
//
//  Created by Joshua Love on 17/04/2022.
//

import SwiftUI

struct Task: Identifiable{
    var id = UUID().uuidString
    var taskTitle: String
    var taskDescription: String
    var taskDate: Date
    
    
    
    
}
