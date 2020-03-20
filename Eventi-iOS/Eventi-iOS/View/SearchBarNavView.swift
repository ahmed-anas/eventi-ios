//
//  SearchBarNavView.swift
//  Eventi-iOS
//
//  Created by frizHub Mac1 on 16/03/2020.
//  Copyright © 2020 frizHub Mac1. All rights reserved.
//

import UIKit
import Foundation

class SearchBarNavView: UIView {
    
//    let searchBar: UISearchBar = {
//        let sb = UISearchBar()
//        sb.placeholder = "Enter username"
//        UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
//        return sb
//    }()
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var titleLabel: UILabel!
    let nibName = "SearchBarNavView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        guard let view = loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)

//        addSubview(searchBar)
//        searchBar.anchor(top: nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topPadding: 0, leftPadding: 12, bottomPadding: 8, rightPadding: 12, width: 0, height: 50)
    }
    
    @IBAction func btnBack (_ sender: UIButton) {
        
    }
    
    func loadViewFromNib() -> UIView? {
        let nib = UINib(nibName: nibName, bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}
