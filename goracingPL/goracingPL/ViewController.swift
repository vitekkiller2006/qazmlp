//
//  ViewController.swift
//  goracingPL
//
//  Created by Гость on 26.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //1
    @IBOutlet weak var IICar: UIImageView!
    @IBOutlet weak var PlayerCar: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var semaforLabel: UILabel!
    @IBOutlet weak var finishLine: UIImageView!
    
    //2
    var stateSemafor: Int = 1
    var timerGame: Timer!
    var timerPC: Timer!
    
    @objc func pcDrive() {
        //6
        if stateSemafor == 2 {
            IICar.center.x += 10
        }
    }
    
    @IBAction func startGame(_sender: UIButton) {
        semaforLabel.isHidden = false
    }
    
    //3
    var timerGame =
    Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(intervalTimer), userInfo: nil, repeats: true)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

