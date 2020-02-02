//
//  Lesson.swift
//  LessonsApp
//
//  Created by Денис Андреев on 02.02.2020.
//  Copyright © 2020 Денис Андреев. All rights reserved.
//

import UIKit


var lessons:[Lesson] = []

func loadLessons() {
    var returnArray:[Lesson] = []
    
    let array = NSArray(contentsOfFile: Bundle.main.path(forResource: "Model", ofType: "plist")!)!
    for lesDictionary in array {
        let lesson = Lesson(dictionary: lesDictionary as! NSDictionary)
        returnArray.append(lesson)
    }
    lessons = returnArray
}

class Lesson: NSObject {
    var id: Int
    var name: String
    var descr: String
    var video:String
    var videoURL:URL? {
        return URL(string: "https://youtube.com/embed/"+video)
    }
    
    init(dictionary:NSDictionary) {
        self.id = dictionary.object(forKey: "id") as! Int
        self.name = dictionary.object(forKey: "name") as! String
        self.descr = dictionary.object(forKey: "descr") as! String
        self.video = dictionary.object(forKey: "url") as! String
    }
}

