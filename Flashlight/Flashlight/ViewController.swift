//
//  ViewController.swift
//  Flashlight
//
//  Created by 찬호백 on 2020/01/06.
//  Copyright © 2020 Chan-Ho Beak. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    //IB = Interface Builder
    //UI와 코드 연결
    @IBOutlet var switchButton: UIButton!
    @IBOutlet var flashImageView: UIImageView!
    
    var isOnOff = false
    var soundPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareSound()
    }
    
    func prepareSound() {
        let path = Bundle.main.path(forResource: "switch.wav", ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            soundPlayer = try AVAudioPlayer(contentsOf: url)
            soundPlayer?.prepareToPlay()
        } catch {
            // couldn't load file :(
        }

    }
    
    func toggleTorch(on: Bool) {
        guard let device = AVCaptureDevice.default(for: .video) else { return }

        if device.hasTorch {
            do {
                try device.lockForConfiguration()

                if on == true {
                    device.torchMode = .on
                } else {
                    device.torchMode = .off
                }

                device.unlockForConfiguration()
            } catch {
                print("Torch could not be used")
            }
        } else {
            print("Torch is not available")
        }
    }
    
    //객채에 대한 이벤트
    @IBAction func switchTapped(_ sender: Any) {
        isOnOff = !isOnOff
        
        soundPlayer?.play()
        toggleTorch(on: isOnOff)
        
        if isOnOff {
            switchButton.setImage(#imageLiteral(resourceName: "onSwitch"), for: .normal)
            flashImageView.image = #imageLiteral(resourceName: "onBG")
            
//            switchButton.setImage(UIImage(named: "onSwitch"), for: .normal)
//            flashImageView.image = UIImage(named: "onBG")
        } else {
            switchButton.setImage(#imageLiteral(resourceName: "offSwitch"), for: .normal)
            flashImageView.image = #imageLiteral(resourceName: "offBG")
//            switchButton.setImage(UIImage(named: "offSwitch"), for: .normal)
//            flashImageView.image = UIImage(named: "offBG")
        }
        
        
        
//        switchButton.setImage(isOnOff ? #imageLiteral(resourceName: "onSwitch") : #imageLiteral(resourceName: "offSwitch") , for: .normal)
//        flashImageView.image = isOnOff ? #imageLiteral(resourceName: "onBG") : #imageLiteral(resourceName: "offBG")
    }
    
}

