//
//  SimplePlayer.swift
//  AppleMusicStApp
//
//  Created by joonwon lee on 2020/03/15.
//  Copyright © 2020 com.joonwon. All rights reserved.
//

import AVFoundation

class SimplePlayer {
    // TODO: 싱글톤 만들기 --> 앱 전반에 걸쳐 돌려쓰기위해, 필요할때 불러쓰기
    static let shared = SimplePlayer()
    
    private let player = AVPlayer()

    var currentTime: Double {
        // TODO: currentTime 구하기
        
        return player.currentItem?.currentTime().seconds ?? 0
    }
    
    var totalDurationTime: Double {
        // TODO: totalDurationTime 구하기
        return player.currentItem?.duration.seconds ?? 0
    }
    
    var isPlaying: Bool {
        // TODO: isPlaying 구하기
        return player.isPlaying // track 파일에 AVPlayer() 클래스 extension했는데 여기서 사용
    }
    
    var currentItem: AVPlayerItem? {
        // TODO: currentItem 구하기
        return player.currentItem
    }
    
    init() { }
    
    func pause() {
        // TODO: pause구현
        player.pause()
    }
    
    func play() {
        // TODO: play구현
        player.play()
    }
    
    func seek(to time:CMTime) {
        // TODO: seek구현
        player.seek(to: time)
    }
    
    func replaceCurrentItem(with item: AVPlayerItem?) {
        // TODO: replace current item 구현
        player.replaceCurrentItem(with: item)
    }
    
    func addPeriodicTimeObserver(forInterval: CMTime, queue: DispatchQueue?, using: @escaping (CMTime) -> Void) {
        player.addPeriodicTimeObserver(forInterval: forInterval, queue: queue, using: using)
    }
}
