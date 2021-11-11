//
//  LayoutSet.swift
//  BeDiffrent
//
//  Created by GSM03 on 2021/11/11.
//

import UIKit
import Then
import SnapKit
import Alamofire

class MyView: UIView {
    
    let myImageView = UIImageView().then{
        $0.image = UIImage(named: "main")
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    func setupView(){
        self.addSubview(myImageView)
        
        myImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(250) // 이거 화면 크기에서 나눠서 비율로 바꿔
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().dividedBy(1.14)
            make.height.equalToSuperview().dividedBy(4)
        }
    }
    
}



