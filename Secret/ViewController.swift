//
//  ViewController.swift
//  Secret
//
//  Created by 管理员 on 15-3-25.
//  Copyright (c) 2015年 Alic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var descriptionLabel: UILabel!

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = ""
        self.navigationController?.navigationBarHidden = true
        self.navigationController?.navigationBar.tintColor = UIColor.redColor()
        
        descriptionLabel.text = String(format: "You can record what you experience\nand what you see,\nIt's your space");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func back() {
        
        println("dgege")
        
    }

    // MARK: - 登录

    @IBAction func signUp(sender: UIButton) {
        
        
        
    }

    // MARK: - 注册
    
    @IBAction func singIn(sender: UIButton) {
        
        
    }

}

