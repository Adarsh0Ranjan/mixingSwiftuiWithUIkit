//
//  ViewController.swift
//  StoryboardAndSwiftuiMixing
//
//  Created by Roro Solutions on 15/06/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindToHomeVC(sender: UIStoryboardSegue) {
        print("on appear operation")
        
    }
    
    @IBAction func goToSwiftuiView(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let detailVC = storyboard.instantiateViewController(withIdentifier: "swiftUIVIew")
            detailVC.modalPresentationStyle = .fullScreen // Set the presentation style to full-screen
            present(detailVC, animated: true, completion: nil)
       
    }
}

