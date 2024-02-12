//
//  ViewController.swift
//  ConstraintsSimplon
//
//  Created by Amandine Cousin on 26/01/2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var currentFurnitureIndice = 0
    
    var listFurniture = [Furniture(imageName: "sofa", description: "Sofa vert en velou"),
    Furniture(imageName: "luminaire", description: "Ce luminaire est tout simplement parfait pour sublimer votre table a manger ou un salon"),
    Furniture(imageName: "fauteuil", description: "Fauteuil élégant accompagné de son repose pieds jaune orangé"),
    Furniture(imageName: "chaise", description: "Chaise blanche de style scandinave")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setFurniture()
    }
    
    func setFurniture() {
        let currentFurniture = listFurniture[self.currentFurnitureIndice]
        self.imageView.image = UIImage(named: currentFurniture.imageName)
        self.descriptionLabel.text = currentFurniture.description
    }

    @IBAction func tapToPrevious(_ sender: Any) {
        if self.currentFurnitureIndice == 0 {
            self.currentFurnitureIndice = self.listFurniture.count - 1
        }
        else {
            self.currentFurnitureIndice -= 1
        }
        setFurniture()
    }
    
    @IBAction func tapToNext(_ sender: Any) {
        if self.currentFurnitureIndice == self.listFurniture.count - 1 {
            self.currentFurnitureIndice = 0
        }
        else {
            self.currentFurnitureIndice += 1
        }
        setFurniture()
    }
    
}

