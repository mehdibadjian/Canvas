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
    var imagePerRow: Int = 2
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        drawShapes(imagePerRow)
    }
    fileprivate func drawShapes(_ imagePerRow: Int = 2) {
        switch shapeType {
        case .square?:
            drawSquare(imagePerRow)
        default: break
        }
    }
    fileprivate func drawSquare(_ imagePerRow: Int = 2) {
        let width = (Double(self.frame.width) - (Double(imagePerRow + 1) * AppConstant.padding)) / Double(imagePerRow)
        var row = 0
        var colomn = 0
        while row < imagePerRow  {
            while colomn < imagePerRow {
                let originX = row == 0 ? AppConstant.padding : AppConstant.padding * Double(row + 1) + Double(Double(row) * width)
                let originY = colomn == 0 ? AppConstant.padding : AppConstant.padding * Double(colomn + 1) + Double(Double(colomn) * width)
                shape = SquareView.init(frame: CGRect(x: originX,
                                                      y: originY,
                                                      width: width,
                                                      height: width))
                addSubview(shape)
                switch (row, colomn) {
                    case (0, 0):
                        shape.setImage(UIImage(named: "image1"), for: .normal)
                    case (1, 0):
                        shape.setImage(UIImage(named: "image1")?.addFilter(filter: .Vibrance), for: .normal)
                    case (0, 1):
                        shape.setImage(UIImage(named: "image1")?.addFilter(filter: .Chrome), for: .normal)
                    case (1, 1):
                        shape.setImage(UIImage(named: "image1")?.addFilter(filter: .Mono), for: .normal)
                    default: break
                }
                colomn += 1
            }
            row += 1
            colomn = 0
        }
    }
}
