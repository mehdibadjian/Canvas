//
//  LandingViewMode.swift
//  Canvas
//
//  Created by Mehdi on 26/10/19.
//  Copyright © 2019 Mehdi. All rights reserved.
//
import UIKit
class LandingViewModel {
    static func getsCanvas(with type: Shape) -> CanvasView? {
        switch type {
        case .square:
            let canvas = CanvasView.init(frame: CGRect(x: 0, y: 0, width: AppConstant.canvasWidth, height: AppConstant.canvasWidth))
            canvas.shapeType = .square
            canvas.backgroundColor = .red
            return canvas
        default:
            return nil
        }
    }
}
