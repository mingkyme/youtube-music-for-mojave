//
//  MainWindowController.swift
//  YoutubeMusicMojave
//
//  Created by MINGKY KIM on 2020/06/09.
//  Copyright © 2020 mingky.me. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController,NSWindowDelegate {

    override func windowDidLoad() {
        super.windowDidLoad()
    }
    func windowShouldClose(_ sender: NSWindow) -> Bool {
        exit(0)
    }

}
