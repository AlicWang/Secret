//
//  MainVc.swift
//  Secret
//
//  Created by 管理员 on 15-4-6.
//  Copyright (c) 2015年 Alic. All rights reserved.
//

import UIKit

class MainVc: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
        // Override point for customization after application launch.
        
        
        [[AudoPlayer sharePlayer]setPlayBackground:YES];// 后台播放音频
        
        MainTabVc  *centerVc = [[[MainTabVc alloc]init]autorelease];
        
        //  --------------------控制只显示左右的侧边栏--------------------
        MoreVc *leftView = [[[MoreVc alloc] init] autorelease];
        MessageVc *rightView = [[[MessageVc alloc] init] autorelease];
        
        IIViewDeckController *vc =[[IIViewDeckController alloc]initWithCenterViewController:centerVc leftViewController:leftView rightViewController:rightView];
        
        self.viewController = [vc autorelease];
        
        DirectionNavigationController *root = [[DirectionNavigationController alloc]initWithRootViewController:self.viewController];
        [root setNavigationBarHidden:YES];//隐藏导航栏
        self.rootViewController = [root autorelease];
        self.window.rootViewController = self.rootViewController;
        [self.window makeKeyAndVisible];
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
