//
//  TrackCollectionViewCell.swift
//  AppleMusicApp
//
//  Created by 김상현 on 2021/03/07.
//

import UIKit

class TrackCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var trackThumbnail: UIImageView!
    @IBOutlet weak var trackTitle: UILabel!
    @IBOutlet weak var trackArtist: UILabel!
    
    // 단순한 그림이었던 스토리보드의 뷰들이 진짜 뷰로 깨어날때 호출되는 메서드
    override func awakeFromNib() {
        super.awakeFromNib()
        trackThumbnail.layer.cornerRadius = 4
        trackArtist.textColor = UIColor.systemGray2
    }
   
    func updateUI(item: Track?) {
        // 곡정보 표시하기
        guard let track = item else {
            return
        }
        trackThumbnail.image = track.artWork
        trackTitle.text = track.title
        trackArtist.text = track.artist
    }
}
