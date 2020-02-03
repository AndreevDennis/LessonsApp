//
//  AboutController.swift
//  LessonsApp
//
//  Created by Денис Андреев on 03.02.2020.
//  Copyright © 2020 Денис Андреев. All rights reserved.
//

import UIKit

class AboutController: UITableViewController {
    
    var shareManager = ShareManager()

    override func viewDidLoad() {
      
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if indexPath.section == 0 && indexPath.row == 0 {
            UIApplication.shared.canOpenURL(URL(string: "itms-apps://itunes.apple.com/developer/alexander-senin/id1064441624")!)
        }
        if indexPath.section == 1 && indexPath.row == 0 {
            shareManager.sendMail(recipeints: ["denisandreev1611@gmail.com"], subject: "swiftLesssons", text: "", vc: self)
        }
        if indexPath.section == 1 && indexPath.row == 1 {
             UIApplication.shared.canOpenURL(URL(string: "itms-apps://itunes.apple.com/app/id")!)
        }
        if indexPath.section == 2 && indexPath.row == 0 {
//            let name = "Swift lessons"
//            let url = URL(string: "itms-apps://itunes.apple.com/app/id")!
//            let image = UIImage(named: "swift.png")
//            shareManager.share(objects: [image!,name,url], showInController: self)
        }
        if indexPath.section == 3 && indexPath.row == 0 {
            //угостить кофе
        }
        if indexPath.section == 3 && indexPath.row == 1 {
            //поддержка
        }
        
    }
    

 
}
