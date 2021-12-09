//
//  T1ViewController.swift
//  Hw10
//
//  Created by Sergii Kotyk on 18/3/21.
//

import UIKit
let images = [UIImage(named: "Unknown"), UIImage(named: "Unknown2"), UIImage(named: "Unknown3"), UIImage(named: "Unknown4"), UIImage(named: "Unknown5"), UIImage(named: "Unknown6"), UIImage(named: "Unknown7"), UIImage(named: "Unknown8"), UIImage(named: "Unknown9"), UIImage(named: "Unknown10")]

class T1ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    @IBOutlet weak var MainCollection: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mainCell", for: indexPath) as! MainCollectionViewCell
        cell.pic.image = images[indexPath.row]
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height - 165
        layout.itemSize = CGSize(width: width/2 , height: height/3  )
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        collectionView.collectionViewLayout = layout
        return cell
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
    }
    

    

}
