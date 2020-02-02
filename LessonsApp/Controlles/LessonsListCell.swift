//
//  LessonsListCell.swift
//  LessonsApp
//
//  Created by Денис Андреев on 02.02.2020.
//  Copyright © 2020 Денис Андреев. All rights reserved.
//

import UIKit

class LessonsListCell: UITableViewCell {
    
    var lesson:Lesson?
    
    @IBOutlet weak var imageLesson: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelPart: UILabel!
    
    func initCell(lesson:Lesson){
        labelName.text = lesson.name
        labelPart.text = "Урок " + String(lesson.id)
        imageLesson.image = UIImage(named: "swift.png")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
