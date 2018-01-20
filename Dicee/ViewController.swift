//
//  ViewController.swift
//  Dicee
//
//  Created by Matthew Wilson on 1/15/18.
//  Copyright © 2018 Matthew Wilson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var m_RandomDiceIndex1 : Int = 0
    var m_RandomDiceIndex2 : Int = 0
    var m_DiceRandomUpperBound : UInt32 = 6
    
    @IBOutlet weak var DiceImageView1: UIImageView!
    @IBOutlet weak var DiceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ButtonRollPressed(_ sender: UIButton) {
        
        m_RandomDiceIndex1 = Int(arc4random_uniform(m_DiceRandomUpperBound))
        
        m_RandomDiceIndex2 = Int(arc4random_uniform(m_DiceRandomUpperBound))
        
        print(m_RandomDiceIndex1)
    }
    
}

