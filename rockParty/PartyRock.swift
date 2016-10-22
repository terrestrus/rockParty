//
//  PartyRock.swift
//  rockParty
//
//  Created by terrestrus on 10/22/16.
//  Copyright © 2016 terrestrus. All rights reserved.
//

import Foundation


class PartyRock {
    private var _imageURL: String!
    private var _videoTitleURL: String!
    private var _videoURL: String!
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitleURL: String {
        return _videoTitleURL
    }
    
    init(imageURL: String, videoURL: String, videoTitleURL: String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitleURL = videoTitleURL
    }
}
