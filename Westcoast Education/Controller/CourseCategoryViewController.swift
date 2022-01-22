//
//  CourseCategoryViewController.swift
//  Westcoast Education
//
//  Created by Victor Gustafsson on 2022-01-20.
//

import UIKit

class CourseCategoryViewController: UITableViewController {

    
    lazy var dataSource = setupDataSource()
    
    //var category = ["Språk", "Juridik", "IT", "Bygg"]
    
    var categories: [CourseCategory] = [
        CourseCategory(courseCategory: "Juridik", logoImage: "law", courses: [Courses(courseName: "Law 1", courseDescription: "Law 1", courseStartDate: "12/12/2012", courseEndDate: "12/12/2012", courseRating: 5, courseFavorite: false), Courses(courseName: "Law 2", courseDescription:"Law 2", courseStartDate: "12/12/2012", courseEndDate: "12/12/2012", courseRating: 5, courseFavorite: false)], availableSpots: 5),
        CourseCategory(courseCategory: "Programmering", logoImage: "programming", courses: [Courses(courseName: "Swift 1", courseDescription: "Swift 1", courseStartDate: "12/12/2012", courseEndDate: "12/12/2012", courseRating: 5, courseFavorite: false), Courses(courseName: "React 2", courseDescription:"React 2", courseStartDate: "12/12/2012", courseEndDate: "12/12/2012", courseRating: 5, courseFavorite: false)], availableSpots: 5),
        CourseCategory(courseCategory: "Sport", logoImage: "sports", courses: [Courses(courseName: "Sports 1", courseDescription: "Sports 1", courseStartDate: "12/12/2012", courseEndDate: "12/12/2012", courseRating: 5, courseFavorite: false), Courses(courseName: "Sports 2", courseDescription:"Sports 2", courseStartDate: "12/12/2012", courseEndDate: "12/12/2012", courseRating: 5,courseFavorite: false)], availableSpots: 5),
        CourseCategory(courseCategory: "IT", logoImage: "it", courses: [Courses(courseName: "IT 1", courseDescription: "IT 1", courseStartDate: "12/12/2012", courseEndDate: "12/12/2012", courseRating: 5,courseFavorite: false), Courses(courseName: "IT 2", courseDescription:"IT 2", courseStartDate: "12/12/2012", courseEndDate: "12/12/2012", courseRating: 5,courseFavorite: false)], availableSpots: 5),
        CourseCategory(courseCategory: "Bygg", logoImage: "it", courses: [Courses(courseName: "Bygg 1", courseDescription: "IT 1", courseStartDate: "12/12/2012", courseEndDate: "12/12/2012", courseRating: 5,courseFavorite: false), Courses(courseName: "Bygg 2", courseDescription:"IT 2", courseStartDate: "12/12/2012", courseEndDate: "12/12/2012", courseRating: 5,courseFavorite: false)], availableSpots: 5)
        
    ]
    
    
    var logos = ["ford", "volvo", "tesla", "dacia", "volkswagen", "polestar", "toyota", "nissan"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = dataSource
        
        var snapshot = NSDiffableDataSourceSnapshot<Section, CourseCategory>()
        
        snapshot.appendSections([.all])
        
        snapshot.appendItems(categories, toSection: .all)
        
        dataSource.apply(snapshot, animatingDifferences: false)
        
        //hides the Safe Area
        tableView.contentInsetAdjustmentBehavior = .never
    
    }
    
    func setupDataSource() -> CategoryDiffableDataSource{
           let cellIdentifier = "categoryCell"
           
        
        let dataSource = CategoryDiffableDataSource(tableView: tableView,
                                                    cellProvider: {
            
            tableView,
            indexPath,
            category in let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! CourseCategoryTableViewCell
            
            cell.courseCategoryName.text = category.courseCategory
            cell.courseImageName.image = UIImage(named: category.logoImage)
            
            return cell
            
        })
        return dataSource
    }
        
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "courseList" {
               if let indexPath = tableView.indexPathForSelectedRow{
                   let destinationController = segue.destination as! CourseTableViewController
                   
                   destinationController.categories = categories[indexPath.row]
               }
           }
       }


}
