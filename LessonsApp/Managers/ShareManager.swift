//
//  ShareManager.swift
//  LessonsApp
//
//  Created by Денис Андреев on 03.02.2020.
//  Copyright © 2020 Денис Андреев. All rights reserved.
//

import UIKit
import MessageUI


class ShareManager: NSObject {
    
    var mailController = MFMailComposeViewController()
    
    func sendMail(recipeints:[String],subject:String,text:String,vc:UIViewController){
        mailController.mailComposeDelegate = self
        mailController.setCcRecipients(recipeints)
        mailController.setSubject(subject)
        mailController.setMessageBody(text, isHTML: false)
        vc.present(mailController, animated: true, completion: nil)
    }
}


extension ShareManager : MFMailComposeViewControllerDelegate{
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
}
