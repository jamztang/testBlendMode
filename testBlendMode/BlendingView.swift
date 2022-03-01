//
//  BlendingView.swift
//  testBlendMode
//
//  Created by James Tang on 1/3/2022.
//

import UIKit

typealias BlendMode = String

extension BlendMode {
    static let multiply: BlendMode = "multiplyBlendMode"
}

class BlendingView: UIView {
    @IBInspectable var blendMode: String?

    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.compositingFilter = blendMode
    }
}
