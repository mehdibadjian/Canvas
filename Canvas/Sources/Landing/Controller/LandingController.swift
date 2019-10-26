//
//  LandingController.swift
//  Canvas
//
//  Created by Mehdi on 26/10/19.
//  Copyright © 2019 Mehdi. All rights reserved.
//
import UIKit
class LandingController: UIViewController {
    var canvasView: CanvasView?
    @IBOutlet weak var twoItems: UIButton! {
        didSet {
            twoItems.setTitle("2x2 Items", for: .normal)
        }
    }
    @IBOutlet weak var threeItems: UIButton! {
        didSet {
            threeItems.setTitle("3x3 Items", for: .normal)
        }
    }
    @IBAction func drawBtnTouchUpInside(_ sender: UIButton) {
        //TODO:- clarify with the PO as the canvas of 800*800 does not fit in the screen of iPhone and all iPads
        var buttonTitle: String
        var numberOfItems: Int
        if sender == twoItems {
            buttonTitle = "2x2 Items"
            numberOfItems = 2
            threeItems.isEnabled = false
        } else {
            buttonTitle = "3x3 Items"
            numberOfItems = 3
            twoItems.isEnabled = false
        }
        if sender.titleLabel?.text == "Close" {
            sender.setTitle(buttonTitle, for: .normal)
            if canvasView != nil {
                canvasView?.removeFromSuperview()
                canvasView = nil
            }
            twoItems.isEnabled = true
            threeItems.isEnabled = true
        } else {
            if let canvas = LandingViewModel.getsCanvas(with: .square, imagePerRow:  numberOfItems) {
                canvasView = canvas
                view.addSubview(canvas)
                canvas.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    canvas.widthAnchor.constraint(equalToConstant: CGFloat(Float(AppConstant.canvasWidth))),
                    canvas.widthAnchor.constraint(equalTo: canvas.heightAnchor),
                    canvas.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                    canvas.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
                    ])
                sender.setTitle("Close", for: .normal)
            }
        }
    }
}
