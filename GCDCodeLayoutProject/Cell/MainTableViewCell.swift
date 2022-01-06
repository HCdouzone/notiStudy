//
//  MainTableViewCell.swift
//  GCDCodeLayoutProject
//
//  Created by 윤형찬 on 2021/04/29.
//

import UIKit
import SnapKit

class MainTableViewCell: UITableViewCell {
    //MARK: - Properties
    lazy var regionView = drawView()
    lazy var todayView = drawView()
    lazy var tomorrowView = drawView()
    
    lazy var localName: UILabel = drawLabel(size: 14, view: regionView).then {
        $0.numberOfLines = 0
    }
    
    lazy var todayImage = UIImageView()
    lazy var tomorrowImage = UIImageView()
    
    lazy var todayWeather = drawLabel(size: 11, view: todayView)
    lazy var tomorrowWeather = drawLabel(size: 11, view: tomorrowView)
    lazy var todayCelcius = drawLabel(size: 11, view: todayView)
    
    lazy var tomorrowCelcius = drawLabel(size: 11, view: tomorrowView)
    lazy var todayHumadity = drawLabel(size: 11, view: todayView)
    lazy var tomorrowHumadity = drawLabel(size: 11, view: tomorrowView)
    
    //MARK: - awakeFromNib
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        addViews()
        setupConstraint()
    }
}


// MARK: - MainTableViewCell 요소 Layout
extension MainTableViewCell {
    func addViews() {
        todayView.addSubview(todayImage)
        tomorrowView.addSubview(tomorrowImage)
    }
    
    
    func setupConstraint() {
        let layoutOffset = self.frame.height * 0.1
        
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
        
        localName.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.width.equalToSuperview()
        }
        
        todayImage.snp.makeConstraints {
            //$0.height.equalTo(todayView.snp.height - todayView.safeAreaLayoutGuide.topAnchor)
            $0.top.leading.equalToSuperview().offset(layoutOffset)
            $0.bottom.equalToSuperview().offset(-layoutOffset)
            
            $0.width.equalTo(todayImage.snp.height).multipliedBy(1)
        }
        
        todayWeather.snp.makeConstraints {
            $0.top.equalToSuperview().offset(layoutOffset * 3)
            $0.leading.equalTo(todayImage.snp.trailing).offset(layoutOffset)
            $0.trailing.equalToSuperview().offset(-layoutOffset)
        }
        
        todayCelcius.snp.makeConstraints {
            $0.leading.equalTo(todayImage.snp.trailing).offset(layoutOffset * 1.5)
            $0.bottom.equalToSuperview().offset(-layoutOffset * 3)
        }
        
        todayHumadity.snp.makeConstraints {
            $0.trailing.equalToSuperview().offset(-layoutOffset)
            $0.bottom.equalToSuperview().offset(-layoutOffset * 3)
        }
        
        tomorrowImage.snp.makeConstraints {
            $0.top.leading.equalToSuperview().offset(layoutOffset)
            $0.bottom.equalToSuperview().offset(-layoutOffset)
            
            $0.width.equalTo(todayImage.snp.height).multipliedBy(1)
        }
        
        tomorrowWeather.snp.makeConstraints {
            $0.top.equalToSuperview().offset(layoutOffset * 3)
            $0.leading.equalTo(tomorrowImage.snp.trailing).offset(layoutOffset)
            $0.trailing.equalToSuperview().offset(-layoutOffset)
        }
        
        tomorrowCelcius.snp.makeConstraints {
            $0.leading.equalTo(tomorrowImage.snp.trailing).offset(layoutOffset * 1.5)
            $0.bottom.equalToSuperview().offset(-layoutOffset * 3)
        }
        
        tomorrowHumadity.snp.makeConstraints {
            $0.trailing.equalToSuperview().offset(-layoutOffset)
            $0.bottom.equalToSuperview().offset(-layoutOffset * 3)
        }
    }
}
