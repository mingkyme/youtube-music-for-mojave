//
//  ViewController.swift
//  YoutubeMusicMojave
//
//  Created by MINGKY KIM on 2020/06/08.
//  Copyright © 2020 mingky.me. All rights reserved.
//

import Cocoa
import WebKit
import MediaKeyTap
class ViewController: NSViewController, MediaKeyTapDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        mediaKeyTap = MediaKeyTap(delegate: self)
        mediaKeyTap?.start()
        web.load(URLRequest.init(url: URL(string: "https://music.youtube.com")!))
        // Do any additional setup after loading the view.
        
    }
    
    var mediaKeyTap : MediaKeyTap?
    
    @IBOutlet weak var web: WKWebView!
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    func handle(mediaKey: MediaKey, event: KeyEvent) {
        switch mediaKey {
            case .previous, .rewind:
            web.evaluateJavaScript("document.querySelector('#left-controls > div > paper-icon-button.previous-button.style-scope.ytmusic-player-bar').click()", completionHandler: nil)
            
        case .playPause:
            web.evaluateJavaScript("document.querySelector('#play-pause-button').click()", completionHandler: nil)
        
        case .next, .fastForward:
            web.evaluateJavaScript("document.querySelector('#left-controls > div > paper-icon-button.next-button.style-scope.ytmusic-player-bar').click()", completionHandler: nil)
        }
    }
}

