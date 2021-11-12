//
//  DetailViewController.swift
//  BountyList
//
//  Created by 김상현 on 2021/03/03.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var bountyLabel: UILabel!
    
    @IBOutlet weak var nameLabelCenterX: NSLayoutConstraint!
    
    @IBOutlet weak var bountyLabelCenterX: NSLayoutConstraint!
    

    let viewModel = DetailViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        prepareAnimation()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showAnimation()
    }
    
    private func prepareAnimation() {
//        nameLabelCenterX.constant = view.bounds.width
//        bountyLabelCenterX.constant = view.bounds.width
        
        nameLabel.transform = CGAffineTransform(translationX: view.bounds.width, y: 0).rotated(by: 180)
        bountyLabel.transform = CGAffineTransform(translationX: view.bounds.width, y: 0).rotated(by: 180)
        
        nameLabel.alpha = 0
        bountyLabel.alpha = 0
    }
    
    private func showAnimation() {
//        nameLabelCenterX.constant = 0
//        bountyLabelCenterX.constant = 0
//
//        //self.view.layoutIfNeeded --> constraint 업데이트 (layout ing)
//
//        UIView.animate(withDuration: 0.3, delay: 0.1, usingSpringWithDamping: 0.5, initialSpringVelocity: 2, options: .allowUserInteraction, animations: self.view.layoutIfNeeded, completion: nil)

      UIView.transition(with: imgView, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 2, options: .allowUserInteraction, animations: {
            self.nameLabel.transform = CGAffineTransform.identity
            self.nameLabel.alpha = 1
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0.2, usingSpringWithDamping: 0.6, initialSpringVelocity: 2, options: .allowUserInteraction, animations: {
            self.bountyLabel.transform = CGAffineTransform.identity
            self.bountyLabel.alpha = 1
        }, completion: nil)
        
    }
    
    func updateUI(){
        if let bountyInfo = viewModel.bountyInfo{
            imgView.image = UIImage(named: "\(bountyInfo.name).jpg")
            nameLabel.text = bountyInfo.name
            bountyLabel.text = "\(bountyInfo.bounty)"
        }
        else {
            
        }
    }
    
    @IBAction func close(_ sender: Any) {
        viewModel.bountyInfo = nil
        dismiss(animated: true, completion: nil)
    }
}

class DetailViewModel {
    var bountyInfo : BountyInfo?
    
    func update(model : BountyInfo?){
        bountyInfo = model
    }
}
