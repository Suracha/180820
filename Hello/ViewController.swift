//
//  ViewController.swift
//  Hello
//
//  Created by Suracha S. on 8/20/18.
//  Copyright © 2018 Suracha S. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

	@IBOutlet weak var oLabelHello: UILabel!
	@IBOutlet weak var oText: UITextField!

	@IBAction func oTextEditBegin(_ sender: UITextField)
	{
		self.oLabelHello.text   = "Hello World !"
	}

	@IBAction func oButtonClicked(_ sender: UIButton)
	{
		// Comment to force commit
		// Forcing commit again
		self.oLabelHello.text = "How're you, \(self.oText.text!) ?"
	}

	override func viewDidLoad()
	{
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning()
	{
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

}

