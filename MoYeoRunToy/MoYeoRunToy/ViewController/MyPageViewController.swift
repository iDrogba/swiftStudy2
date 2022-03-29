//
//  MyPageViewController.swift
//  MoYeoRunToy
//
//  Created by 김상현 on 2022/03/29.
//

import UIKit

class MyPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
class PentagonView : UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = .clear
    }

    override func draw(_ rect: CGRect) {
        let size = self.bounds.size
        let h = size.height * 0.15      // 배수 adjust

        let p1 = self.bounds.origin
        let p2 = CGPoint(x: p1.x, y: p1.y + h * 1.8)
        let p3 = CGPoint(x: p1.x + size.width, y: p1.y + h)
        let p4 = CGPoint(x: p1.x + size.width, y: p1.y + size.height)
        let p5 = CGPoint(x: p1.x, y: size.height)

        let path = UIBezierPath()
        path.move(to: p2)
        path.addLine(to: p3)
        path.addLine(to: p4)
        path.addLine(to: p5)
        path.close()

        //let color = UIColor(red: 0xEE, green: 0xF4, blue: 0xFF, alpha: 0.5)
        //UIColor.init(red: 0xEE, green: 0xF4, blue: 0xFF, alpha: 0xFF).set()
        //UIColor.blue.set()
        //UIColor.init(displayP3Red: 0xEE, green: 0xF4, blue: 0xFF, alpha: 0xFF).set()
        UIColor.init(rgb: 0xEEF4FF).set()
        path.fill()
    }
}
extension UIColor {

    convenience init(red: Int, green: Int, blue: Int, a: Int = 0xFF) {

        self.init(

            red: CGFloat(red) / 255.0,

            green: CGFloat(green) / 255.0,

            blue: CGFloat(blue) / 255.0,

            alpha: CGFloat(a) / 255.0

        )

    }

 

    convenience init(rgb: Int) {

           self.init(

               red: (rgb >> 16) & 0xFF,

               green: (rgb >> 8) & 0xFF,

               blue: rgb & 0xFF

           )

       }

    

    // let's suppose alpha is the first component (ARGB)

    convenience init(argb: Int) {

        self.init(

            red: (argb >> 16) & 0xFF,

            green: (argb >> 8) & 0xFF,

            blue: argb & 0xFF,

            a: (argb >> 24) & 0xFF

        )

    }

}
