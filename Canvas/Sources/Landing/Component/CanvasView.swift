//
//  CanvasView.swift
//  Canvas
//
//  Created by Mehdi on 26/10/19.
//  Copyright © 2019 Mehdi. All rights reserved.
//
import UIKit
class CanvasView: UIView {
    var shape: ShapeView!
    var shapeType: Shape!
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        drawShapes()
    }
    fileprivate func drawShapes() {
        switch shapeType {
        case .square?:
            drawSquare()
        default: break
        }
    }
    fileprivate func drawSquare() {
        let width = Double(self.frame.width/2) - Double(AppConstant.padding + AppConstant.padding/2)
        shape = SquareView.init(frame: CGRect(x: AppConstant.padding,
                                              y: AppConstant.padding,
                                              width: width,
                                              height: width))
        addSubview(shape)
        shape = SquareView.init(frame: CGRect(x: AppConstant.padding * 2 + width ,
                                              y: AppConstant.padding,
                                              width: width,
                                              height: width))
        addSubview(shape)
        shape = SquareView.init(frame: CGRect(x: AppConstant.padding,
                                              y: AppConstant.padding * 2 + width,
                                              width: width,
                                              height: width))
        addSubview(shape)
        shape = SquareView.init(frame: CGRect(x: AppConstant.padding * 2 + width,
                                              y: AppConstant.padding * 2 + width,
                                              width: width,
                                              height: width))
        addSubview(shape)
    }
}
