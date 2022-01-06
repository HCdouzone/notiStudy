//
//  IndicatorTableViewCell.swift
//  GCDCodeLayoutProject
//
//  Created by 윤형찬 on 2021/04/29.
//

import UIKit
import SnapKit

class IndicatorTableViewCell: UITableViewCell {
    
    lazy var regionView = drawView()
    lazy var todayView = drawView()
    lazy var tomorrowView = drawView()
    
    lazy var regionLabel = drawLabel(size: 20, text: "Region", view: regionView, weight: .bold)
    lazy var todayLabel = drawLabel(size: 20, text: "Today", view: todayView, weight: .bold)
    lazy var tomorowLabel = drawLabel(size: 20, text: "Tomorrow", view: tomorrowView, weight: .bold)
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupConstraint()
    }
}

extension IndicatorTableViewCell {
    
    func setupConstraint() {
        regionView.snp.makeConstraints { make in
            make.height.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.20)
            make.leading.equalToSuperview()
        }
        
        todayView.snp.makeConstraints { make in
            make.height.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.40)
            make.leading.equalTo(regionView.snp.trailing)
            //dd = make.width.equalToSuperview().multipliedBy(0.14).constraint
        }
        
        tomorrowView.snp.makeConstraints { make in
            make.height.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.40)
            make.leading.equalTo(todayView.snp.trailing)
        }
        
        regionLabel.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.size.equalToSuperview()
        }
        
        todayLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalToSuperview()
        }
        
        tomorowLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.size.equalToSuperview()
        }
    }
}
