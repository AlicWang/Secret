//
//  SignUpVc.swift
//  Secret
//
//  Created by 管理员 on 15-3-25.
//  Copyright (c) 2015年 Alic. All rights reserved.
//

import UIKit

class TextFieldView:UIView{

    required init(coder aDecoder: NSCoder) {
        currentField = 0
        super.init(coder: aDecoder)
    }

    @IBOutlet var txtFieldArray: [UITextField]!

    var currentField: NSInteger
    
    override func awakeFromNib() {
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHidden:", name: UIKeyboardWillHideNotification, object: nil)
    }
    
    func keyboardWillShow(notification:NSNotification){
        
        var dic:NSDictionary = notification.userInfo!
        var keyboardBoundsValue: AnyObject? = dic.objectForKey(UIKeyboardFrameEndUserInfoKey);
        
        var keyboardBounds = CGRectZero;
        keyboardBoundsValue?.getValue(&keyboardBounds)
        
        //var duration = dic.objectForKey(UIKeyboardAnimationDurationUserInfoKey)?.floatValue
        var textField = txtFieldArray[currentField]
        
        var frame = self.convertRect(textField.frame, fromView: textField.superview)
        //frame.origin.y += 64;
        var rect = CGRectIntersection(frame,keyboardBounds)
        if rect.size.height != 0 { // 键盘 和 textfield 有交集
            
            var frame = self.frame
            frame.origin.y = keyboardBounds.origin.y - frame.size.height + 64;
            
            UIView.animateWithDuration(0.25, animations: { () -> Void in
                self.frame = frame
            })
        }
        
    }
    
    func keyboardWillHidden(notification:NSNotification){
        
        var dic:NSDictionary = notification.userInfo!
        var keyboardBoundsValue: AnyObject? = dic.objectForKey(UIKeyboardFrameEndUserInfoKey);
        
        var keyboardBounds = CGRectZero;
        keyboardBoundsValue?.getValue(&keyboardBounds)
        
        //var duration = dic.objectForKey(UIKeyboardAnimationDurationUserInfoKey)?.floatValue
        
        var rect = self.bounds

        UIView.animateWithDuration(0.25, animations: { () -> Void in
            self.frame = rect
        })
        
    }
    
    override func pointInside(point: CGPoint, withEvent event: UIEvent?) -> Bool {
        
        var touchTextField = false
        var i = 0
        
        for txtField in txtFieldArray{
            var frame = self.convertRect(txtField.frame, fromView: txtField.superview)
            if CGRectContainsPoint(frame, point){
                touchTextField = true
                currentField = i++
            }
        }
        if(!touchTextField){
            //UIApplication.sharedApplication().keyWindow?.endEditing(true)
            UIApplication.sharedApplication().sendAction("resignFirstResponder", to: nil, from: nil, forEvent: nil);
        }

        return super.pointInside(point, withEvent: event);
    }
    
    deinit{
        
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
}

class SignUpVc: UIViewController {

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
        self.title = "Login"
        self.myMethod()
        self.myMethod1()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }
    
    func myMethod(){
        println("myMethod")
    }
    func myMethod1(){
        println("myMethod1")
    }
}
