//
//  VideoVC.swift
//  RockPartyApp
//
//  Created by Spencer Forrest on 13/12/2016.
//  Copyright © 2016 Spencer Forrest. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock {
        get {
            return _partyRock
        }
        
        set {
            _partyRock = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
    }
}
