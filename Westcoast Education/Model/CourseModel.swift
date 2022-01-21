//
//  CourseModel.swift
//  Westcoast Education
//
//  Created by Victor Gustafsson on 2022-01-20.
//

import Foundation


struct Courses: Hashable {
    var courseName: String
    var courseDescription: String
    var courseStartDate: String
    var courseEndDate: String
    var courseRating: Int
    
    init(courseName: String, courseDescription: String, courseStartDate: String, courseEndDate: String,
         courseRating: Int) {
        self.courseName = courseName
        self.courseDescription = courseDescription
        self.courseStartDate = courseStartDate
        self.courseEndDate = courseEndDate
        self.courseRating = courseRating
    }
}
