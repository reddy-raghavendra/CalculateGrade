//
//  ViewController.swift
//  GradeCalculate
//
//  Created by Raghavendra Reddy reddy on 07/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var marksScoredTxt: UITextField!
    @IBOutlet weak var totalMarks: UITextField!
    @IBOutlet weak var calculateGradeBtn: UIButton!
    
    @IBOutlet weak var percentageLbl: UILabel!
    @IBOutlet weak var gradeLbl: UILabel!
    @IBAction func calculateGrade(_ sender: Any) {
        let percentage: Double = Double(marksScoredTxt.text!)! * 100 / Double(totalMarks.text!)!
        let grade: String;
        
        percentageLbl.text = "Percentage: \(percentage)";
        
        if percentage < 60 {
            grade = "D"
        } else if percentage < 80 {
            grade = "C"
        } else if percentage < 90{
            grade = "B"
        } else if percentage <= 100{
            grade = "A"
        }else{
            grade = "Error"
            percentageLbl.text = "Error"
        }
        
        gradeLbl.text = "Grade: \(grade)";
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

