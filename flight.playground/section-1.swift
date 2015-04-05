// Playground - noun: a place where people can play

import UIKit
import XCPlayground
import VectorKit

let bounds = CGRect(x: 0, y: 0, width: 400, height: 200)
let view = UIView(frame: bounds)
view.backgroundColor = UIColor.lightGrayColor()

XCPShowView("view", view)

func dot() -> CALayer {
    let layer = CALayer()
    layer.bounds = CGRect(x: 0, y: 0, width: 4, height: 4)
    layer.cornerRadius = 2
    layer.backgroundColor = UIColor.redColor().CGColor
    return layer
}

let bank = 30.0 * M_PI / 180.0
let velocity = 15.0
let initial = (x: 100.0, y: 100.0)
let vector = (x: 300.0, y: 120.0)
let heading = 25.0 * M_PI / 180.0
let left = false

let plane = dot()
plane.position = CGPoint(x: initial.x, y: initial.y)
view.layer.addSublayer(plane)

let vectorLayer = dot()
vectorLayer.position = CGPoint(x: vector.x, y: vector.y)
view.layer.addSublayer(vectorLayer)

let r = VectorKit.turnRadius(velocity, bank)
let center = VectorKit.turnCenter(r, heading, left, initial)

let circleBounds = CGRect(x: 0, y: 0, width: r * 2, height: r * 2)
let path = UIBezierPath(roundedRect: circleBounds, cornerRadius: circleBounds.size.height / 2.0)











