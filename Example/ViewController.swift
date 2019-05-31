//
//  ViewController.swift
//  Example
//
//  Created by Maciej Gad on 31 May 2019.
//  Copyright © 2019 Maciej Gad. All rights reserved.
//

import UIKit
import DashedView

// MARK: - ViewController

/// The ViewController
class ViewController: UIViewController {

    let dash = DashedView()
    let backgoundView = UIView()
    
    /// View did load
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(dash)
        dash.lineWidth = 2
        dash.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        
        setupSize()
        self.view.backgroundColor = .white
    }
    
    func setupSize() {
        dash.translatesAutoresizingMaskIntoConstraints = false
        dash.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        dash.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        dash.widthAnchor.constraint(equalToConstant: 250).isActive = true
        dash.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    /// LoadView
    override func loadView() {
        self.view = backgoundView
    }

}
