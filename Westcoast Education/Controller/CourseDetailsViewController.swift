//
//  CourseDetailsViewController.swift
//  Westcoast Education
//
//  Created by Victor Gustafsson on 2022-01-20.
//

import UIKit

class CourseDetailsViewController: UIViewController {

    
      
    @IBOutlet weak var courseName: UILabel!
    @IBOutlet weak var courseDesc: UILabel!
    @IBOutlet weak var courseStartDate: UILabel!
    @IBOutlet weak var courseEndDate: UILabel!
    var courseNameText = ""
    var courseDescText = ""
    var courseStartDateText = ""
    var courseEndDateText = ""
      
      override func viewDidLoad() {
          super.viewDidLoad()

          // Do any additional setup after loading the view.
          courseName.text = courseNameText
          courseDesc.text = courseDescText
          courseStartDate.text = courseStartDateText
          courseEndDate.text = courseEndDateText
          
      }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
