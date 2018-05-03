//
//  PopViewController.swift
//  Pixel-City
//
//  Created by Henry Chukwu on 5/3/18.
//  Copyright © 2018 Henry Chukwu. All rights reserved.
//

import UIKit

class PopViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var popImageview: UIImageView!

    var passedImage: UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        popImageview.image = passedImage
        addDoubleTap()

    }

    func initData(forImage image: UIImage) {
        self.passedImage = image
    }

    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }

    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }

}
