//
//  GreenViewController.swift
//  Part8
//
//  Created by 葡萄酒 on 2021/08/11.
//

import UIKit

class GreenViewController: UIViewController {
    
    @IBOutlet private weak var valueLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!
    
    let delegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBAction func actionSlider(_ sender: UISlider) {
        
        let value = slider.value
        
        valueLabel.text = String(value)
        delegate.shareValue = value
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        valueLabel.text = String(delegate.shareValue)
        slider.value = delegate.shareValue
    }
}
