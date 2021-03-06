//
//  LinksViewController.swift
//  Links
//
//  Automatically generated by MobileCodeGenerator 4.
//  Copyright 2018 . All rights reserved.
//
import UIKit

class LinksViewController: UIViewController
 {

	@IBOutlet weak var algebraButton: UIButton!
	@IBOutlet weak var probabilityButton: UIButton!
	@IBOutlet weak var equationsButton: UIButton!

	
	override func viewDidLoad() {
	    super.viewDidLoad()
		algebraButton.layer.cornerRadius = 5
		probabilityButton.layer.cornerRadius = 5
		equationsButton.layer.cornerRadius = 5


	/*
		To load unsecure pages with http add this to Info.plist
		<key>NSAppTransportSecurity</key>
		<dict>
			<key>NSAllowsArbitraryLoads</key>
			<true/>
			<key>NSExceptionDomains</key>
			<dict>
				<key>YOURDOMAIN.com</key>
				<dict>
					<key>NSExceptionAllowsInsecureHTTPLoads</key>
					<true/>
					<key>NSIncludesSubdomains</key>
					<true/>
				</dict>
			</dict>
		</dict>
	*/
	}
	
	override func viewDidAppear(_ animated: Bool) {
	    super.viewDidAppear(animated)
	}
	
	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
	}



	@IBAction func algebraButtonTouchDown(_ sender: UIButton) {
        (parent as! ChildViewControllerInteractionProtocol).childViewControllerInteraction(controlId: "algebraButton", selectedItem: nil)
    }
    
	@IBAction func algebraButtonTouchUpInside(_ sender: UIButton) {
        //TODO Implement the action
    }  
	@IBAction func probabilityButtonTouchDown(_ sender: UIButton) {
        (parent as! ChildViewControllerInteractionProtocol).childViewControllerInteraction(controlId: "probabilityButton", selectedItem: nil)
    }
    
	@IBAction func probabilityButtonTouchUpInside(_ sender: UIButton) {
        //TODO Implement the action
    }  
	@IBAction func equationsButtonTouchDown(_ sender: UIButton) {
        (parent as! ChildViewControllerInteractionProtocol).childViewControllerInteraction(controlId: "equationsButton", selectedItem: nil)
    }
    
	@IBAction func equationsButtonTouchUpInside(_ sender: UIButton) {
        //TODO Implement the action
    }  
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
	}
	
	override func didReceiveMemoryWarning() {
	    super.didReceiveMemoryWarning()
	    // Dispose of any resources that can be recreated.
	}
}
