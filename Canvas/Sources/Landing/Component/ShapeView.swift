//
//  ShapeView.swift
//  Canvas
//
//  Created by Mehdi on 26/10/19.
//  Copyright © 2019 Mehdi. All rights reserved.
//
import UIKit
enum Shape {
    case square
    case rectangle
    case triangle
}
class ShapeView: UIView {
    var path: UIBezierPath!
    var shape: Shape!
    func createShape() {
    }
}
