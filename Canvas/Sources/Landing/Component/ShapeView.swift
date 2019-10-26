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
    //TODO:- support for other shapes
    case rectangle
    case triangle
}
class ShapeView: UIButton {
    var path: UIBezierPath!
    var shape: Shape!
    func createShape() {
        imageView?.contentMode = .scaleToFill
        imageEdgeInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)
    }
}
