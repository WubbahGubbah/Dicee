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
    
    let m_DiceRandomUpperBound : UInt32 = 6
    let m_DiceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    
    @IBOutlet weak var DiceImageView1: UIImageView!
    @IBOutlet weak var DiceImageView2: UIImageView!
    
    //called upon app start
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //button click
    @IBAction func ButtonRollPressed(_ sender: UIButton) {
        
        updateDiceImages()
    }
    
    //refactored code to run the update
    func updateDiceImages() {
        m_RandomDiceIndex1 = Int(arc4random_uniform(m_DiceRandomUpperBound))
        
        m_RandomDiceIndex2 = Int(arc4random_uniform(m_DiceRandomUpperBound))
        
        DiceImageView1.image = UIImage(named: m_DiceArray[m_RandomDiceIndex1])
        
        DiceImageView2.image = UIImage(named: m_DiceArray[m_RandomDiceIndex2])
    }
    
}

