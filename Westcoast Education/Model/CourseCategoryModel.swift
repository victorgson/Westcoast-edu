//
//  CourseCategoryModel.swift
//  Westcoast Education
//
//  Created by Victor Gustafsson on 2022-01-20.
//

import Foundation

struct CourseCategory: Hashable {
    var courseCategory: String
    var logoImage: String
    var availableSpots: Int
    var courses: [Courses]
    
    init(courseCategory: String, logoImage: String, courses: [Courses], availableSpots: Int){
        self.courseCategory = courseCategory
        self.logoImage = logoImage
        self.availableSpots = 5 //
        self.courses = courses
    }
}
