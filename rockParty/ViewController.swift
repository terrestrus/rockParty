//
//  ViewController.swift
//  rockParty
//
//  Created by terrestrus on 10/22/16.
//  Copyright © 2016 terrestrus. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    let urlTest = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7YY2HA6GhzQ\" frameborder=\"0\" allowfullscreen></iframe>"
    override func viewDidLoad() {
        super.viewDidLoad()
        let p1 = PartyRock(imageURL: "https://www.google.ru/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwjkl4u0wu7PAhWNa5oKHVD3DzwQjRwIBw&url=http%3A%2F%2Fadventuretime.wikia.com%2Fwiki%2FFile%3AAt_100x100_iconjake.jpg&bvm=bv.136593572,d.bGs&psig=AFQjCNFayaQWM0W_OpYQa2oCC5gMkLskPw&ust=1477229373688971", videoURL: urlTest, videoTitleURL: "Title")
        let p2 = PartyRock(imageURL: "https://www.google.ru/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=&url=https%3A%2F%2Fwww.sdfirealarms.co.uk%2Ffire-protection%2Fmad24s-keep-locked-shut-sign-100x100-s-a.html&bvm=bv.136593572,d.bGs&psig=AFQjCNEgjM_7mxXJSQA-D0y12-bl9WbG_A&ust=1477230213196903", videoURL: urlTest, videoTitleURL: "Title")
        
        let p3 = PartyRock(imageURL: "https://www.google.ru/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=&url=http%3A%2F%2Fcommunity.comicbookresources.com%2Fshowthread.php%3F585-DC-Hardcover-Collected-Editions-Part-3%2Fpage233&bvm=bv.136593572,d.bGs&psig=AFQjCNFayaQWM0W_OpYQa2oCC5gMkLskPw&ust=1477229373688971", videoURL: urlTest, videoTitleURL: "Title")
        let p4 = PartyRock(imageURL: "https://www.google.ru/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwjg3MDJxe7PAhXBjywKHQbeCfIQjRwIBw&url=http%3A%2F%2Fwww.animated-gifs.eu%2Fcategory_objects%2Favatars-100x100-smoking%2F&bvm=bv.136593572,d.bGs&psig=AFQjCNEgjM_7mxXJSQA-D0y12-bl9WbG_A&ust=1477230213196903", videoURL: urlTest, videoTitleURL: "Title")
        let p5 = PartyRock(imageURL: "https://www.google.ru/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwjkl4u0wu7PAhWNa5oKHVD3DzwQjRwIBw&url=http%3A%2F%2Fadventuretime.wikia.com%2Fwiki%2FFile%3AAt_100x100_iconjake.jpg&bvm=bv.136593572,d.bGs&psig=AFQjCNFayaQWM0W_OpYQa2oCC5gMkLskPw&ust=1477229373688971", videoURL: urlTest, videoTitleURL: "Title")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock )
            return cell

        } else {
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
}

