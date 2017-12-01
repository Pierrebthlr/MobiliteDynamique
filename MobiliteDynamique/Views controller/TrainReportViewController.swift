//
//  TrainReportViewController.swift
//  MobiliteDynamique
//
//  Created by Pierre Bathellier on 01/12/2017.
//  Copyright © 2017 Pierre Bathellier. All rights reserved.
//

import UIKit
import ResearchKit


class TrainReportViewController: UIViewController, ORKTaskViewControllerDelegate {
    
    let taskViewController = ORKTaskViewController(task: TrainSurveyTask, taskRun: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        taskViewController.delegate = self as? ORKTaskViewControllerDelegate
        present(taskViewController, animated: true, completion: nil)

        // Do any additional setup after loading the view.
    }
    
    func taskViewController(
        _ taskViewController: ORKTaskViewController,
        didFinishWith reason: ORKTaskViewControllerFinishReason,
        error: Error?) {
        dismiss(animated: true, completion: nil)
        
        let durationFormatter = NumberFormatter()
        durationFormatter.maximumFractionDigits = 2
        
        if let results = taskViewController.result.results {
            for result in results {
                
            }
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
