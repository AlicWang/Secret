//
//  SignInVc.swift
//  Secret
//
//  Created by 管理员 on 15-3-25.
//  Copyright (c) 2015年 Alic. All rights reserved.
//

import UIKit

class SignInVc: UIViewController {

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
        self.navigationController?.setNavigationBarHidden(false, animated: animated);
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated);
        self.navigationController?.setNavigationBarHidden(true, animated: animated);
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad();
        self.title = "Register"
    }
}
