//
//  FriendDetailViewController.swift
//  HobbyTracker
//
//  Created by John Kouris on 7/29/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import UIKit

class FriendDetailViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var hometownLabel: UILabel!
    @IBOutlet var hobbiesTextView: UITextView!
    
    var friend: Friend?
    
    override func viewDidLoad() {
        updateViews()
    }
    
    private func updateViews() {
        guard let friend = friend else { return }
        
        nameLabel.text = friend.name
        hometownLabel.text = friend.hometown
        
        var hobbyText = ""
        for hobby in friend.hobbies {
            hobbyText += "• \(hobby)\n"
        }
        hobbiesTextView.text = hobbyText
    }

}
