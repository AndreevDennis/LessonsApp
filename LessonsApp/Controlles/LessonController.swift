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
    var shareManager = ShareManager()
    

    @IBOutlet weak var webKit: WKWebView!
    @IBOutlet weak var buttonLike: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
   
    @IBOutlet weak var labelName: UILabel!
    
    
    @IBAction func buttonLikeAction(_ sender: UIButton) {
        lesson!.like = !lesson!.like
        setButtonLike()
    }
    
    @IBAction func sendAuthorButtonAction(_ sender: UIButton) {
        shareManager.sendMail(recipeints: ["denisandreev1611@gmail.com"], subject: lesson!.description, text: "Hello, my friend", vc: self)
    }
    
    
    func setButtonLike(){
        if lesson == lesson {
            if lesson!.like {
                buttonLike.tintColor = .red
            } else {
                buttonLike.tintColor = .lightGray
            }
        }
    }
    
    
    override func viewDidLoad() {
        labelName.text = lesson?.name
        navigationItem.title = lesson?.name
        webKit.load(URLRequest(url: URL(string: "https://www.google.com.ua/?hl=ru")!))
//        webKit.load(URLRequest(url: (lesson?.videoURL)!))
        setButtonLike()
    }
    
}


