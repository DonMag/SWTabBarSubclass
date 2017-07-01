//
//  TabBarSample.swift
//  SWTabBarSubclass
//
//  Created by DonMag on 7/1/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// all your normal setup stuff....
	}
	
	func firstViewSpecific(_ aValue: Int) -> Void {
		print("Passed value is:", aValue)
		// do something with the passed value
	}
	
}

class NearMeViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// all your normal setup stuff....
	}
	
	func resetMe() -> Void {
		print("resetMe() called in NearMeVC")
		// do whatever you want, such as
//		self.nearMeTable.setContentOffset(CGPoint.zero, animated: true)
	}
	
}

class MapSearchViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// all your normal setup stuff....
	}
	
	func resetMe() -> Void {
		print("resetMe() called in MapSearchVC")
		// do whatever you want, such as
//		if requests.mapEventData.count > 0 {
//			self.resultsCollectionView?.scrollToItem(at: IndexPath(row: 0, section: 0),
//			                                         at: .left,
//			                                         animated: true)
//		}
	}
	
}

class MyTabBarController: UITabBarController, UITabBarControllerDelegate {
	
	var myValue = 0

	override func viewDidLoad() {
		super.viewDidLoad()
		
		// make self the UITabBarControllerDelegate
		self.delegate = self
	}

	func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
		
		if let vc = viewController as? FirstViewController {
			myValue += 1
			vc.firstViewSpecific(myValue)
			return
		}
		
		if let vc = viewController as? NearMeViewController {
			vc.resetMe()
			return
		}
		
		if let vc = viewController as? MapSearchViewController {
			vc.resetMe()
			return
		}
		
	}
	
}

