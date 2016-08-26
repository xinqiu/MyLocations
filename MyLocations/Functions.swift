//
//  Functions.swift
//  MyLocations
//
//  Created by Xin Qiu on 16/8/26.
//  Copyright © 2016年 Xin Qiu. All rights reserved.
//

import Foundation
import Dispatch

func afterDelay(seconds: Double, closure: () -> ()) {
    let when = dispatch_time(DISPATCH_TIME_NOW, Int64(seconds * Double(NSEC_PER_SEC)))
    dispatch_after(when, dispatch_get_main_queue(), closure)
}