// Playground - noun: a place where people can play

import UIKit
import XCPlayground
import VectorKit

let bounds = CGRect(x: 0, y: 0, width: 400, height: 200)
let view = UIView(frame: bounds)
view.backgroundColor = UIColor.lightGrayColor()

XCPShowView("view", view)
