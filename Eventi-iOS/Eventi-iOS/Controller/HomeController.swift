//
//  ViewController.swift
//  Eventi-iOS
//
//  Created by frizHub Mac1 on 10/03/2020.
//  Copyright © 2020 frizHub Mac1. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(HomeCell.self, forCellWithReuseIdentifier: "HomeCell")
        // Do any additional setup after loading the view.
    }


}

extension HomeController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCell", for: indexPath) as? HomeCell {
            return cell
        }
        return UICollectionViewCell()
    }
}

