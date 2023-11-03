//
//  ViewController.swift
//  MNR
//
//  Created by Софья Норина on 3.11.2023.
//

import UIKit
import SnapKit

class ProductsViewController: UIViewController {
    
    let previousCardView = UIView()
    let productView = ProduntView()
    
    let contentView: UIView = {
        let view = UIView()
        return view
    }()
    
    lazy var productsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cvv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return cvv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(contentView)
        view.backgroundColor = .white
        self.title = "Мои продукты"
        setConstraint()
        contentView.addSubview(productsCollectionView)
        productsCollectionView.register(ProduntView.self, forCellWithReuseIdentifier: ProduntView.indetifier)
    }
    
    
    func setConstraint() {
        contentView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(80)
            make.trailing.leading.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        productsCollectionView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(85)
            make.height.equalTo(300)
        }
        
    }
    
}

