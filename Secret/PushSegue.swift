//
//  PushSegue.swift
//  Secret
//
//  Created by 管理员 on 15-3-25.
//  Copyright (c) 2015年 Alic. All rights reserved.
//

import UIKit

class PushSegue: UIStoryboardSegue {
   
    override func perform(){
        
        var ctrl = self.sourceViewController as UIViewController;
        ctrl.navigationController?.navigationBarHidden = false;
        
        var ctrl2 = self.destinationViewController as UIViewController;
        ctrl.navigationController?.pushViewController(ctrl2, animated: true);
    }
}
