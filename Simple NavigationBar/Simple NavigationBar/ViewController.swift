//
//  ViewController.swift
//  Simple NavigationBar
//
//  Created by RAMDHAN CHOUDHARY on 16/05/19.
//  Copyright © 2019 RDC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //TODO: Go to storyboard, select viewcontroller, Now in Top Menu Bar
        //Editor->Embded In -> Navigation Controller and add Bar buttons before follwing code
    }
    
    override func viewDidAppear(_ animated: Bool) {
        setupNavigationBar()
    }
    
    //Customize Navigation Bar Appearance
    func setupNavigationBar()
    {
        let navigationBar = self.navigationController?.navigationBar
        navigationBar?.barStyle = UIBarStyle.black
        navigationBar?.tintColor = UIColor.yellow
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "Swift_logo")
        imageView.image = image
        
        navigationItem.titleView = imageView
    }

    //Handle Navigation Bar Button Actions
    @IBAction func profileButtonClicked(_ sender: Any) {
        print("This is Navigation Bar Profile Button")
    }
    
    @IBAction func settingButtonClicked(_ sender: Any) {
        print("This is Navigation Bar Setting Button")

    }
    @IBAction func helpButtonClicked(_ sender: Any) {
        print("This is Navigation Bar Help Button")

    }
}

