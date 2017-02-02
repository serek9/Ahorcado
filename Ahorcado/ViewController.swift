//
//  ViewController.swift
//  Ahorcado
//
//  Created by DAM on 17/1/17.
//  Copyright © 2017 DAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var field: UITextField!
    @IBOutlet weak var error: UILabel!
    @IBOutlet weak var deadicon: UIImageView!
    @IBOutlet weak var rightwrong: UIImageView!
    @IBOutlet weak var superword: UILabel!
    
    var letter = ""
    var words: [String] = ["CURRENTS","INNERSPEAKER","LONERISM","DOOKIE","NEVERMIND"]
    var charss: [Character] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        error.alpha = 0
        charss = Array(words[Int(arc4random_uniform(UInt32(words.count)))].characters)
        let palabra = " ".join(charss)
    }
    
    @IBAction func accept(sender: AnyObject) {
        let check = field.text
        if check!.characters.count > 1{
            error.alpha = 1
        }else{
            error.alpha = 0
            letter = field.text!
            checkLetter();
        }
        
        
    }
    
    func word(){
        
        print(chars)
    }
    
    func checkLetter(){
        word()
        print(letter)
    }
    
    

    override func didReceiveMemoryWarning() {super.didReceiveMemoryWarning()}

    

}

