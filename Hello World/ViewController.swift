//
//  ViewController.swift
//  Hello World
//
//  Created by G Hao Lee on 8/27/18.
//  Copyright © 2018 ghao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var userText: UITextField!
    var backgroundCol: UIColor!
    var textCol: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backgroundCol = view.backgroundColor
        textCol = textLabel.textColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getRandomColor() -> UIColor {
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
    
    @IBAction func textColour(_ sender: Any) {
        textLabel.textColor = getRandomColor()
    }
    @IBAction func backColour(_ sender: Any) {
        view.backgroundColor = getRandomColor()
    }
    @IBAction func newText(_ sender: Any) {
        textLabel.text = userText.text
        userText.text = ""
        view.endEditing(true)
    }
    @IBAction func reset(_ sender: Any) {
        textLabel.text = "suhhh dude"
        textLabel.textColor = textCol
        self.view.backgroundColor = backgroundCol
        
    }
}

