//
//  ViewController.swift
//  MoYeoRunToy
//
//  Created by 김상현 on 2022/03/11.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

//셀 어떻게?
extension MainViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainViewController_RunningGuide_Cell", for: indexPath) as? MainViewController_RunningGuide_Cell else {
            return UICollectionViewCell()
        }
        
        cell.RunningGuide_Cell_ImageView.image = UIImage(named: "1.jpg")
        
        return cell
    }
    
}

//셀 크기
extension MainViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let cellWidth = collectionView.bounds.size.width * 0.8
        let cellHeight = collectionView.bounds.size.height
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
}

// 셀 터치시
extension MainViewController : UICollectionViewDelegate {
    
}

class MainViewController_RunningGuide_Cell: UICollectionViewCell {
    
    @IBOutlet weak var RunningGuide_Cell_ImageView: UIImageView!

    
}
