//
//  TableViewController.swift
//  Emoji
//
//  Created by Namdq on 05/04/2022.
//

import UIKit

class TableViewController: UITableViewController {
    
    let emoji = getEmoji()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // how many rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emoji.count
    }

    // what goes it each row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = emoji[indexPath.row].character + " " + emoji[indexPath.row].defintion

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedEmoji = emoji[indexPath.row]
        performSegue(withIdentifier: "Definition", sender: selectedEmoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let definitionVC = segue.destination as? EmojiViewController{
            if let selectedEmoji = sender as? Emoji {
            definitionVC.emoji = selectedEmoji
            }
        }
    }
    

    
}
