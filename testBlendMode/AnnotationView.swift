//
//  AnnotationView.swift
//  testBlendMode
//
//  Created by James Tang on 1/3/2022.
//

import UIKit

@IBDesignable class AnnotationView: UIView {

    @IBInspectable var direction: Int = 0 // 0 = \, 1 = /
    @IBInspectable var color: UIColor = .black

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func draw(_ rect: CGRect) {

        let path = UIBezierPath()

        switch direction {
        case 0:
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: bounds.size.width, y: bounds.size.height))
        case 1:
            path.move(to: CGPoint(x: bounds.size.width, y: 0))
            path.addLine(to: CGPoint(x: 0, y: bounds.size.height))
        default:
            break
        }
        color.setStroke()

        path.stroke()
    }

}
