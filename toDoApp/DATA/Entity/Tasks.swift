//
//  Tasks.swift
//  toDoApp
//
//  Created by varol on 2.08.2023.
//

import Foundation


class Tasks {
    var task_id:Int?
    var task_name:String?
    var task_description:String?
    
    init(){
        
    }
    
    init(task_id: Int, task_name: String, task_description: String) {
        self.task_id = task_id
        self.task_name = task_name
        self.task_description = task_description
        
    }
    
}
