//
//  EmojiViewController.swift
//  Emoji
//
//  Created by Namdq on 06/04/2022.
//

import UIKit

class EmojiViewController: UIViewController {

    @IBOutlet weak var EmojiLabel: UILabel!
    @IBOutlet weak var EmojiDefinitionLabel: UILabel!
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        EmojiDefinitionLabel.text = emoji.character
        EmojiDefinitionLabel.text = emoji.defintion
//        if emoji == "😄" {
//            EmojiLabel.text = "smile"
//        } else {
//            EmojiLabel.text = emoji
//        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
