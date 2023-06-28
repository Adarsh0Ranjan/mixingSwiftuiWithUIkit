//
//  ViewController.swift
//  StoryboardAndSwiftuiMixing
//
//  Created by Roro Solutions on 15/06/23.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindToHomeVC(sender: UIStoryboardSegue) {
        print("on appear operation")
        
    }
    
    @IBAction func goToSwiftuiView(_ sender: Any) {
        let swiftUIView = SwiftUIView2() // Replace "SwiftUIView" with the name of your SwiftUI view
        let hostingController = UIHostingController(rootView: swiftUIView)
        hostingController.modalPresentationStyle = .fullScreen // Set the presentation style to full-screen
        present(hostingController, animated: true, completion: nil)
       
    }
}

