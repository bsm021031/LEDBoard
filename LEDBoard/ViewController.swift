//
//  ViewController.swift
//  LEDBoard
//
//  Created by Seungmin Baek on 2022/06/21.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingDelegate
{
    @IBOutlet weak var contentsLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.contentsLabel.textColor = .purple
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let settingViewController = segue.destination as? SettingViewController
        {
            settingViewController.delegate = self
        }
    }
    
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor)
    {
        if let text = text
        {
            self.contentsLabel.text = text
        }
        
        self.contentsLabel.textColor = textColor
        self.view.backgroundColor = backgroundColor
    }
}

