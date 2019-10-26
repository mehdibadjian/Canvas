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
    @IBOutlet weak var actionBtn: UIButton! {
        didSet {
            actionBtn.setTitle("Draw", for: .normal)
        }
    }
    @IBAction func drawBtnTouchUpInside(_ sender: Any) {
        //TODO:- clarify with the PO as the canvas of 800*800 does not fit in the screen of iPhone and all iPads
        if actionBtn.titleLabel?.text == "Close" {
            actionBtn.setTitle("Draw", for: .normal)
            if canvasView != nil {
                canvasView?.removeFromSuperview()
                canvasView = nil
            }
        } else {
            if let canvas = LandingViewModel.getsCanvas(with: .square) {
                canvasView = canvas
                view.addSubview(canvas)
                canvas.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    canvas.widthAnchor.constraint(equalToConstant: CGFloat(Float(AppConstant.canvasWidth))),
                    canvas.widthAnchor.constraint(equalTo: canvas.heightAnchor),
                    canvas.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                    canvas.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
                    ])
                actionBtn.setTitle("Close", for: .normal)
            }
        }
    }
}
