//
//  ViewController.swift
//  Demo
//
//  Created by Peter Pan on 07/06/2017.
//  Copyright © 2017 Peter Pan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var movies = [NewMovie]()
    let imageView = UIImageView()
    
    
    fileprivate func extractedFunc() {
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = URL(string: "https://goo.gl/JrjP2f")
        URLSession.shared.dataTask(with: url!) { (data, res, err) in
            DispatchQueue.main.async {
                if let data = data {
                    self.imageView.image = UIImage(data: data)
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        extractedFunc()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

