//
//  ScrollViewController.swift
//  ios-playground
//
//  Created by Deshpande, Tejas on 4/6/16.
//  Copyright © 2016 Tejas Deshpande. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        textField2.delegate = self
        textField3.delegate = self
        // Do any additional setup after loading the view.
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(keyboardWillShowForNotification), name: UIKeyboardWillShowNotification, object: nil)
        scrollView.keyboardDismissMode = UIScrollViewKeyboardDismissMode.OnDrag
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShowForNotification(notification: NSNotification) {
        let keyboardSize: CGSize = (notification.userInfo![UIKeyboardFrameEndUserInfoKey]?.CGRectValue().size)!
        scrollView.setContentOffset(CGPoint(x: 0, y: keyboardSize.height), animated: true)
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        scrollView.scrollRectToVisible(textField.frame, animated: true)
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
