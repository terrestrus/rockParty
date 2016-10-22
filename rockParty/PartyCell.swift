//
//  PartyCell.swift
//  rockParty
//
//  Created by terrestrus on 10/22/16.
//  Copyright © 2016 terrestrus. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var videoPreview: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitleURL
        
        let url = URL(string: partyRock.imageURL)
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url!)
                DispatchQueue.global().sync {
                    self.videoPreview.image = UIImage(data: data)
                }
            } catch  {
                
            }
        }
        
    }
}
