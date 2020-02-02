//
//  LessonController.swift
//  LessonsApp
//
//  Created by Денис Андреев on 02.02.2020.
//  Copyright © 2020 Денис Андреев. All rights reserved.
//

import UIKit
import WebKit

class LessonController: UITableViewController {
    
    var lesson:Lesson?
    

    @IBOutlet weak var webKit: WKWebView!
    @IBOutlet weak var buttonDislike: UIButton!
    @IBOutlet weak var buttonLike: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
   
    @IBOutlet weak var labelName: UILabel!
    
    
    @IBAction func buttonLikeAction(_ sender: UIButton) {
    }
    @IBAction func sendAuthorButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func buttonDislikeAction(_ sender: UIButton) {
    }
    
    
    override func viewDidLoad() {
        labelName.text = lesson?.name
        navigationItem.title = lesson?.name
        webKit.load(URLRequest(url: URL(string: "https://www.google.com.ua/?hl=ru")!))
//        webKit.load(URLRequest(url: (lesson?.videoURL)!))
    }
    
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 0
//    }
    
    /*
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
     
     // Configure the cell...
     
     return cell
     }
     */
}


