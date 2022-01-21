//
//  CategoryDiffableDataSource.swift
//  Westcoast Education
//
//  Created by Victor Gustafsson on 2022-01-20.
//

import UIKit

enum Section{
 case all
}

class CategoryDiffableDataSource: UITableViewDiffableDataSource<Section, CourseCategory> {

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
}
