//
//  ViewController.swift
//  tapIt
//
//  Created by Eric Fakhourian on 6/9/16.
//  Copyright © 2016 Eric Fakhourian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //properties 
    var maxTaps = 0
    var currentTaps = 0
    
   
    //outlates
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var howManyTaps: UITextField!
    @IBOutlet weak var playButt: UIButton!
    
    @IBOutlet weak var tapButt: UIButton!
    @IBOutlet weak var tabLaper: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!){
        currentTaps += 1
        updateTapsLBL()
        
        if isGameOver(){
            resturtGame()
            
        }
        
    }
    
    @IBAction func onPlayerButtonPressed(sender: UIButton!){
        
        
        if howManyTaps.text != nil && howManyTaps.text != ""{
            logoImage.hidden = true
            playButt.hidden = true
            howManyTaps.hidden = true
            
            tapButt.hidden = false
            tabLaper.hidden = false
            
            maxTaps = Int(howManyTaps.text!)!
            currentTaps = 0
            
            updateTapsLBL()
            
        }
        
        
        
    }
    
    func resturtGame(){
        maxTaps = 0
        howManyTaps.text = ""
        
        logoImage.hidden = false
        playButt.hidden = false
        howManyTaps.hidden = false
        
        tapButt.hidden = true
        tabLaper.hidden = true
    }
    
    func isGameOver()-> Bool{
        if currentTaps >= maxTaps{
            return true
        }else{
            return false
        }
    }
    
    func updateTapsLBL() {
        
        tabLaper.text = "\(currentTaps) Taps"

    }
    
    


}

