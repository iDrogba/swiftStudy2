//
//  TrackCollectionHeaderView.swift
//  AppleMusicApp
//
//  Created by 김상현 on 2021/03/08.
//

import AVFoundation
import UIKit

class TrackCollectionHeaderView: UICollectionReusableView {
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var item: AVPlayerItem?
    var tapHandler : ((AVPlayerItem) -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbnailImageView.layer.cornerRadius = 4
    }
    
    func update(with item : AVPlayerItem){
        self.item = item
        guard let track = item.convertToTrack() else {
            return
        }
        
        self.thumbnailImageView.image = track.artWork
        self.descriptionLabel.text = "Today's pick is \(track.artist)'s album - \(track.albumName), Let's listem."
        
    }
    
    @IBAction func cardTapped(_ sender: UIButton) {
       // 탭했을때 처리
        guard let todaysItem = item else { return }
        tapHandler?(todaysItem)
    }
    
    
}
