//
//  TaskDetails.swift
//  toDoApp
//
//  Created by zehra on 2.08.2023.
//

import UIKit

class TaskDetails: UIViewController {

    @IBOutlet weak var taskNameLabel: UILabel!
    @IBOutlet weak var taskDescriptionLabel: UILabel!
    @IBOutlet weak var taskNameArea: UITextField!
    @IBOutlet weak var taskDescriptionArea: UITextField!
    
    var task:Tasks?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let t = task{
            taskNameArea.text = t.task_name
            taskDescriptionArea.text = t.task_description
        }

    }
    @IBAction func updateButton(_ sender: Any) {
        if let tn = taskNameArea.text,let td = taskDescriptionArea.text, let t = task{
            update(task_id: t.task_id!, task_name: tn, task_description: td)
        }
    }
    
    func update(task_id:Int, task_name:String, task_description:String){
        print("Update the task : \(task_id) - \(task_name) - \(task_description)")
        
    }

}
