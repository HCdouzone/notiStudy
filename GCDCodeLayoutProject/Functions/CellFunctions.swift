//
//  CellFunctions.swift
//  GCDCodeLayoutProject
//
//  Created by 윤형찬 on 2021/04/29.
//

import Foundation
import UIKit
import Then

extension UIView {
    func drawView() -> UIView {
        return UIView().then {
            $0.layer.borderColor = UIColor.gray.cgColor
            $0.layer.borderWidth = 1
            self.addSubview($0)
        }
    }
    
    func drawLabel(size: CGFloat, text: String? = nil, view: UIView, weight: UIFont.Weight = .medium) -> UILabel {
        return UILabel().then {
            $0.font = .systemFont(ofSize: size, weight: weight)
            $0.textAlignment = .center
            $0.lineBreakMode = .byCharWrapping
            $0.text = text
            
            view.addSubview($0)
        }
    }
}
