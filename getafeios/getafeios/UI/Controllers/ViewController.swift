//
//  ViewController.swift
//  getafeios
//
//  Created by Dev2 on 20/09/2019.
//  Copyright © 2019 Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func onButtomPressed( sender: UIButton ) {
        print("Buttom pressed")
        
        label.text = "He pulsado el boton"
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        actionButton.setTitle("MI BOTON", for: .normal)
        
        label.textColor = .red
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
        
}
    
}
