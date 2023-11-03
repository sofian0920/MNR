//
//  ProduntView.swift
//  MNR
//
//  Created by Софья Норина on 3.11.2023.
//

import UIKit
import SnapKit


class ProduntView: UICollectionViewCell {
    static let indetifier = "ProductViewCell"
    
//    let cardView: UIView = {
//        let view = UIView()
//        view.backgroundColor = UIColor(named: "productBackground")
//        view.layer.cornerRadius = 15
//        return view
//    }()
    
    let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "mainLabelText"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return label
    }()
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "descriptionLabelText"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .black
        return label
    }()
    
    let countLabel: UILabel = {
        let label = UILabel()
        label.text = "countLabelText"
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    let designButton: UIButton = {
        let button = UIButton()
        button.setTitle("buttonTitle", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 10)
        button.backgroundColor = UIColor(named: "buttonColor")
        button.layer.cornerRadius = 15
        return button
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setUpUI()
        setUpConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI() {
       
        contentView.addSubview(mainLabel)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(designButton)
        contentView.addSubview(countLabel)
        
    }
    
    private func setUpConstraint() {
        
//        cardView.snp.makeConstraints { make in
//            make.height.equalTo(120)
//            make.width.equalTo(300)
//        }
        
        mainLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(15)
            make.leading.equalToSuperview().inset(20)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().inset(20)
        }
        
        designButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(10)
            make.leading.equalToSuperview().inset(15)
            make.width.equalToSuperview().multipliedBy(0.4)
            make.height.equalToSuperview().multipliedBy(0.25)
        }
        
        countLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.trailing.equalToSuperview().inset(20)
        }
    }
}


