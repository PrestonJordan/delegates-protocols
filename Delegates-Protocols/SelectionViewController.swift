//
//  SelectionViewController.swift
//  Delegates-Protocols
//
//  Created by Preston Jordan on 8/10/17.
//  Copyright © 2017 Preston Jordan. All rights reserved.
//

import UIKit

protocol TeamSelectionDelegate {
    func didSelectTeam(image: UIImage, name: String, color: UIColor)
}

class SelectionViewController: UIViewController {
    
    var selectionDelegate: TeamSelectionDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func teamInstinctButtonSelected(_ sender: UIButton) {
        selectionDelegate.didSelectTeam(image: UIImage(named: "teamInstinctBig")!, name: "Team Instinct", color: .yellow)
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func teamMysticButtonSelected(_ sender: Any) {
        selectionDelegate.didSelectTeam(image: UIImage(named: "teamMysticBig")!, name: "Team Mystic", color: .blue)
        dismiss(animated: true, completion: nil)

    }
    
    @IBAction func teamValorButtonSelected(_ sender: Any) {
        selectionDelegate.didSelectTeam(image: UIImage(named: "teamValorBig")!, name: "Team Valor", color: .red)
        dismiss(animated: true, completion: nil)

    }
    
}
