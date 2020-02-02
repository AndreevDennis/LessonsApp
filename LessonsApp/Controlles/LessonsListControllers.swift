//
//  LessonsListControllers.swift
//  LessonsApp
//
//  Created by Денис Андреев on 02.02.2020.
//  Copyright © 2020 Денис Андреев. All rights reserved.
//

import UIKit

class LessonsListControllers: UITableViewController {

    override func viewDidLoad() {
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lessons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LessonsListCell
        let lessonForCell = lessons[indexPath.row]
        cell.initCell(lesson: lessonForCell)
        return cell
    }
    
    var selectedLesson:Lesson?
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        selectedLesson = lessons[indexPath.row]
        performSegue(withIdentifier: "goToLesson", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            (segue.destination as! LessonController).lesson = selectedLesson
    }
    
}
