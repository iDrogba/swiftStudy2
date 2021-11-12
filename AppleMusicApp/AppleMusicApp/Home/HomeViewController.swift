//
//  HomeViewController.swift
//  AppleMusicApp
//
//  Created by 김상현 on 2021/03/07.
//

import UIKit

class HomeViewController: UIViewController {
    // 트랙관리 객체 추가
    let trackManager: TrackManager = TrackManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension HomeViewController: UICollectionViewDataSource{
    // 셀을 몇개 표시할까?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return trackManager.tracks.count
    }
    
    // 셀을 어떻게 표시할까?
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TrackCollectionViewCell", for: indexPath) as? TrackCollectionViewCell else {
            return UICollectionViewCell()
        }
        let track = trackManager.track(at: indexPath.row)
        cell.updateUI(item: track)
        return cell
    }

    // 헤더뷰 어떻게?
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        // 헤더 구성하기
        case UICollectionView.elementKindSectionHeader:
            guard let item = trackManager.todaysTrack else{
                return UICollectionReusableView()
            }
        
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "TrackCollectionHeaderView", for: indexPath) as? TrackCollectionHeaderView else {
                return UICollectionReusableView()
            }
            
            header.update(with: item)
            header.tapHandler = { item -> Void in
                // Player 를 띄운다.
                let playerStoryboard = UIStoryboard.init(name: "Player", bundle: nil) // 스토리보드 인스턴스 가져오고
                
                guard let playerVC = playerStoryboard.instantiateViewController(identifier: "PlayerViewController") as? PlayerViewController  else { return } // 뷰컨트롤러도 가져오고
                playerVC.simplePlayer.replaceCurrentItem(with: item) // 띄우려는애 넘겨주고
                self.present(playerVC, animated: true, completion: nil) // 보여주기~!!
                
            }
            
            return header
        default:
            return UICollectionReusableView()
        }
    }
    
}

extension HomeViewController : UICollectionViewDelegate{
// 클릭 했을때?
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            // 곡 클릭시 플레이어 띄우기
        let playerStoryboard = UIStoryboard.init(name: "Player", bundle: nil) // 스토리보드 인스턴스 가져오고
        
        guard let playerVC = playerStoryboard.instantiateViewController(identifier: "PlayerViewController") as? PlayerViewController  else { return } // 뷰컨트롤러도 가져오고
        
        let item = self.trackManager.tracks[indexPath.item]
        playerVC.simplePlayer.replaceCurrentItem(with: item) // 띄우려는애 넘겨주고
        
        self.present(playerVC, animated: true, completion: nil) // 보여주기~!!
    }
}

extension HomeViewController : UICollectionViewDelegateFlowLayout{
    // 셀 사이즈 어떻게 할까?
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // 20 - card(width) - 20 - card(width) - 20
        
        let itemspacing : CGFloat = 20
        let margin : CGFloat = 20 // section inset 이라 부름
        let width = (collectionView.bounds.width - itemspacing - margin*2)/2
        let height = width + 60
    
        return CGSize.init(width: width, height: height)
    }
}
