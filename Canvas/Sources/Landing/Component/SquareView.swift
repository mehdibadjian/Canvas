//
//  SquareView.swift
//  Canvas
//
//  Created by Mehdi on 26/10/19.
//  Copyright © 2019 Mehdi. All rights reserved.
//
import UIKit
class SquareView: ShapeView {
    override func draw(_ rect: CGRect) {
        self.createShape()
    }
    override func createShape() {
        path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0.0))
        path.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
        path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        path.addLine(to: CGPoint(x: self.frame.size.width, y: 0.0))
        path.close()
        UIColor.white.setFill()
        path.fill()
        UIColor.black.setStroke()
        path.stroke()
        path.lineWidth = 30
    }
}
