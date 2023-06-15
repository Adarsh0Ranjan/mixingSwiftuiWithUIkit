//
//  SwiftUI2ViewController.swift
//  StoryboardAndSwiftuiMixing
//
//  Created by Roro Solutions on 15/06/23.
//

import UIKit
import SwiftUI

class SwiftUI2ViewController: UIViewController {
    
    @IBOutlet weak var childViiew: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let childView = UIHostingController(rootView: SwiftUIView2())
        addChild(childView)
        childView.view.frame = childViiew.bounds
        childViiew.addSubview(childView.view)

      
    }
}
