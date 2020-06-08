//
//  MediaTapDelegate.swift
//  YoutubeMusicMojave
//
//  Created by MINGKY KIM on 2020/06/08.
//  Copyright © 2020 mingky.me. All rights reserved.
//

import Foundation
class AppDelegate: NSObject, NSApplicationDelegate {
    ⋮

    var mediaKeyTap: MediaKeyTap?

    func applicationDidFinishLaunching(aNotification: Notification) {
        mediaKeyTap = MediaKeyTap(delegate: self)
        mediaKeyTap?.start()
    }

    ⋮
}
