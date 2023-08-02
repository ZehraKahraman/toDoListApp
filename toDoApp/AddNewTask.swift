//
//  AddNewTask.swift
//  toDoApp
//
//  Created by zehra on 2.08.2023.
//

import UIKit

class AddNewTask: UIViewController {

    @IBOutlet weak var taskNameLabel: UILabel!
    
    @IBOutlet weak var taskDescriptionLabel: UILabel!
    
    @IBOutlet weak var taskNameField: UITextField!
    
    @IBOutlet weak var taskDescriptionField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func saveButtonAct(_ sender: Any) {
        if let tn = taskNameField.text, let td = taskDescriptionField.text {
            save(task_name: tn, task_description: td)
        }
    }
    
    
    func save(task_name:String,task_description:String) {
        print("Task is: \(task_name) , Description is: \(task_description)")
    }
    
}
