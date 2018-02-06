//
//  MainPageVc.swift
//  RtspPlayer-iOS
//
//  Created by WZ on 2017/10/18.
//  Copyright © 2017年 WZ. All rights reserved.
//

import UIKit

class MainPageVc: UIViewController {
    
    fileprivate lazy var kxplayer : KxMovieViewController = KxMovieViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        switch arc4random_uniform(2) { //不包含上边界
        case 0:
            let path = "rtmp://live.hkstv.hk.lxdns.com/live/hks"
            kxplayer = KxMovieViewController.movieViewController(withContentPath: path, parameters: [:]) as! KxMovieViewController
            self.present(kxplayer, animated: true, completion: nil)
        default:
            let path = "http://live.hkstv.hk.lxdns.com/live/hks/playlist.m3u8"
            kxplayer = KxMovieViewController.movieViewController(withContentPath: path, parameters: [:]) as! KxMovieViewController
            self.present(kxplayer, animated: true, completion: nil)
        }

    }

}
