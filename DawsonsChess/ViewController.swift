//
//  ViewController.swift
//  DawsonsChess2.0
//
//  Created by James O'Rourke on 05/10/2019.
//  Copyright © 2019 James O'Rourke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var buttonArr = [UIButton]()
    
    func makeButton(text:String) ->  UIButton {
        let myButton = UIButton()
        myButton.backgroundColor = UIColor.red
        myButton.setTitle(text, for: .normal)
        return myButton
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    
    @IBOutlet var sizeLabel: UILabel!
    
    @IBOutlet var stackView: UIStackView!
    
    
    @IBAction func sizeSlider(_ sender: UISlider) {
        let currentVal = Int(sender.value)
        sizeLabel.text = "\(currentVal)"
        check()
    }
    @IBOutlet var messageLabel:UILabel!
    
    
    
    
    
    func removeBoard(){
    }
    
    
    func createBoard(size: Int){
        removeBoard()
        
        let buttonStack = UIStackView()
        buttonStack.axis = .horizontal
        buttonStack.alignment = .firstBaseline
        buttonStack.distribution = .fill
        buttonStack.spacing = 8
        
        buttonArr.removeAll()
        for n in 0..<size{
            print("\(n)")
            let button = makeButton(text:"\(n)")
            buttonArr.append(button)
        }
        for button in buttonArr{
            buttonStack.addArrangedSubview(button)
        }
        buttonStack.reloadInputViews()
        stackView.addArrangedSubview(buttonStack)
        stackView.reloadInputViews()
    }
    
    func check(){
        if(Int(sizeLabel.text!) != buttonArr.count){
            createBoard(size: Int(sizeLabel.text!)!)
        }
    }
    
}

