//
//  LoginViewController.swift"
//  Login//
//  Automatically generated by MobileCodeGenerator 3.
//  Copyright © 2017 . All rights reserved.
//
import UIKit

class LoginViewController: UIViewController
 {

	@IBOutlet weak var loginButton: UIButton!

	
	override func viewDidLoad() {
	    super.viewDidLoad()
		loginButton.layer.cornerRadius = 2


	}
	
	override func viewDidAppear(_ animated: Bool) {
	    super.viewDidAppear(animated)
	}
	
	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
	}



	@IBAction func loginButtonTouchDown(_ sender: UIButton) {
        //TODO Implement the action
    }
    
	@IBAction func loginButtonTouchUpInside(_ sender: UIButton) {
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
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
	}
}