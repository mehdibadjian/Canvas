//
//  LandingController.swift
//  Canvas
//
//  Created by Mehdi on 26/10/19.
//  Copyright © 2019 Mehdi. All rights reserved.
//
import UIKit
class LandingController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO:- clarify with the PO as the canvas of 800*800 does not fit in the screen of iPhone and all iPads
        if let canvas = LandingViewModel.getsCanvas(with: .square) {
            view.addSubview(canvas)
        }
    }
}
