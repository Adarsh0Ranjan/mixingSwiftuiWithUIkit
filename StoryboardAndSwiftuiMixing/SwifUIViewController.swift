//
//  SwifUIViewController.swift
//  StoryboardAndSwiftuiMixing
//
//  Created by Roro Solutions on 15/06/23.
//

import UIKit
import SwiftUI

class SwifUIViewController: UIViewController {
    
    @IBOutlet weak var theContainer: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let childView = UIHostingController(rootView: SwiftUIView())
        addChild(childView)
        childView.view.frame = theContainer.bounds
        theContainer.addSubview(childView.view)
        
        // Do any additional setup after loading the view.
    }
    

}
