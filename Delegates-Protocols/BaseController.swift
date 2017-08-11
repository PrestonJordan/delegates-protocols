//
//  BaseController.swift
//  Delegates-Protocols
//
//  Created by Preston Jordan on 8/10/17.
//  Copyright © 2017 Preston Jordan. All rights reserved.
//

import UIKit

class BaseController: UIViewController {

    @IBOutlet weak var mainImageView: UIImageView!
    
    @IBOutlet weak var chooseTeamButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chooseTeamButton.layer.cornerRadius = chooseTeamButton.frame.size.height / 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func chooseTeamButtonSelected(_ sender: UIButton) {
        let selectionViewController = storyboard?.instantiateViewController(withIdentifier: "SelectionView") as! SelectionViewController
        
        selectionViewController.selectionDelegate = self
        present(selectionViewController, animated: true, completion: nil)
    }
}


extension BaseController: TeamSelectionDelegate {
    func didSelectTeam(image: UIImage, name: String, color: UIColor) {
        view.backgroundColor = color
        mainImageView.image = image
        nameLabel.text = name
    }
}
