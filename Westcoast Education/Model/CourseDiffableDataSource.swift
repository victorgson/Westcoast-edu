//
//  CourseDiffableDataSource.swift
//  Westcoast Education
//
//  Created by Victor Gustafsson on 2022-01-20.
//

import UIKit



class CourseDiffableDataSource: UITableViewDiffableDataSource<Section, Courses> {

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
}
