//
//  TableViewController.swift
//  Westcoast Education
//
//  Created by Victor Gustafsson on 2022-01-18.
//

import UIKit

class CourseTableViewController: UITableViewController {

    
    lazy var dataSource = setupDataSource()
    
    var categories: CourseCategory?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = dataSource
        
        var snapshot = NSDiffableDataSourceSnapshot<Section, Courses>()
        
        snapshot.appendSections([.all])
        snapshot.appendItems(categories!.courses, toSection: .all)
        
        dataSource.apply(snapshot, animatingDifferences: false)
    }
    
    func setupDataSource() -> UITableViewDiffableDataSource<Section, Courses>{
           let cellIdentifier = "courseCell"
           
        
        let dataSource = CourseDiffableDataSource(tableView: tableView,
                                                    cellProvider: {
            
            tableView,
            indexPath,
            course in let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! CourseTableViewCell
            
            cell.courseNameLabel?.text = "\(course.courseName)"
            
            return cell
            
        })
        return dataSource
    }
        
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "courseDetail" {
               if let indexPath = tableView.indexPathForSelectedRow{
                   let destinationController = segue.destination as! CourseDetailsViewController
                   
                   destinationController.courseNameText = categories!.courses[indexPath.row].courseName
                   destinationController.courseDescText = categories!.courses[indexPath.row].courseDescription
                   destinationController.courseStartDateText = categories!.courses[indexPath.row].courseStartDate
                   destinationController.courseEndDateText = categories!.courses[indexPath.row].courseEndDate
               }
           }
       }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        guard let courses = self.dataSource.itemIdentifier(for: indexPath) else {
            return UISwipeActionsConfiguration()
            
        }
        
        let favoriteAction = UIContextualAction(style: .normal, title: "Favorite") {
            (action, sourceView, completionHandler) in
            var snapshot = self.dataSource.snapshot()
        
            //TODO: Do not delete, set maybe color to of the cell to another color bcus favorite
            snapshot.deleteItems([courses])
            
            self.dataSource.apply(snapshot, animatingDifferences: false)
            
            completionHandler(true)
        }
        
        favoriteAction.image = UIImage(systemName: "favorite")
        
        let swipeConfig = UISwipeActionsConfiguration(actions: [favoriteAction])
        return swipeConfig
    }
    //Göm topp menyn
       override var prefersStatusBarHidden: Bool{
           return true
       }

}

