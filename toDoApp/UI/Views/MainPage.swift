//
//  ViewController.swift
//  toDoApp
//
//  Created by zehra on 2.08.2023.
//

import UIKit

class MainPage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func detailButton(_ sender: Any) {
        let task = Tasks(task_id: 1, task_name: "Do Homework!", task_description: "You should do math homework before the exam!")
        performSegue(withIdentifier: "toDetail", sender: task)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            if let task = sender as? Tasks{
                let arrivedVC = segue.destination as! TaskDetails//downcasting
                arrivedVC.task = task
            }
        }
        
        // Test
    }
    
}

