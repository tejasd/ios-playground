//
//  NativeViewController.swift
//  ios-playground
//
//  Created by Tejas Deshpande on 2/21/16.
//  Copyright © 2016 Tejas Deshpande. All rights reserved.
//

import UIKit

@objc class NativeViewController: UIViewController {

    @IBAction func goBack(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
