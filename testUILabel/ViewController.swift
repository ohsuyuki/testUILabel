//
//  ViewController.swift
//  testUILabel
//
//  Created by yuki.osu on 2021/04/27.
//

import UIKit

class TestLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup()
    }

    fileprivate func setup() {
        self.layer.cornerRadius = 4.0
        self.font = UIFont.systemFont(ofSize: 11)
        self.textAlignment = .center

        self.layer.borderColor = UIColor.blue.cgColor
        self.layer.borderWidth = 1.0
//        self.backgroundColor = UIColor.yellow
    }

    public override func drawText(in rect: CGRect) {
//        let insets = UIEdgeInsets(top: 4, left: 12, bottom: 3, right: 12)
        super.drawText(in: rect.inset(by: self.insets))
    }

//    var insets: UIEdgeInsets {
//        get {
//            return UIEdgeInsets(top: 4, left: 12, bottom: 3, right: 12)
//        }
//    }

    let insets: UIEdgeInsets = UIEdgeInsets(top: 4, left: 12, bottom: 3, right: 12)

    override func sizeThatFits(_ size: CGSize) -> CGSize {
        var adjSize = super.sizeThatFits(size)

        adjSize.width += insets.left + insets.right
        adjSize.height += insets.top + insets.bottom
        
        return adjSize
    }

    override var intrinsicContentSize: CGSize {
        var contentSize = super.intrinsicContentSize

        contentSize.width += insets.left + insets.right
        contentSize.height += insets.top + insets.bottom
        
        return contentSize
    }

}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
