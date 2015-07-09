//
//  MainVc.swift
//  Secret
//
//  Created by 管理员 on 15-4-6.
//  Copyright (c) 2015年 Alic. All rights reserved.
//

import UIKit

class MainVc: UIViewController {

    @IBOutlet weak var tittleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tittleLabel.text = "Add Records"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

        //[[AudoPlayer sharePlayer]setPlayBackground:YES];// 后台播放音频
        
        
        //  --------------------控制只显示左右的侧边栏--------------------
//        UIViewController *leftView = [[UIViewController alloc]init] ;
//        
//        IIViewDeckController *vc =[[IIViewDeckController alloc]initWithCenterViewController:centerVc leftViewController:leftView ];
//        
//        
//        DirectionNavigationController *root = [[DirectionNavigationController alloc]initWithRootViewController:vc];
//        [root setNavigationBarHidden:YES];//隐藏导航栏

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func logOut(sender: UIButton) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
