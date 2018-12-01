//
//  ViewController.swift
//  MonthProject
//
//  Created by Misael Pérez Chamorro on 11/30/18.
//  Copyright © 2018 Misael Pérez Chamorro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var pageViewController: UIPageViewController?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    // Do any additional setup after loading the view, typically from a nib.
    let startingViewController: DataViewController = self.modelController.viewControllerAtIndex(0, storyboard: self.storyboard!)!
    
    let viewControllers = [startingViewController]
    
    self.pageViewController!.setViewControllers(viewControllers, direction: .forward, animated: false, completion: {done in })
    
    self.pageViewController?.dataSource = self.modelController
    
    self.addChild(self.pageViewController!)
    self.view.addSubview(self.pageViewController!.view)
    self.pageViewController!.view.frame = self.view.frame
    self.pageViewController!.didMove(toParent: self)
  }
  
  lazy var modelController = ModelController()
  
//  var modelController: ModelController {
//    if _modelController == nil {
//      _modelController = ModelController()
//    }
//    return _modelController!
//  }
//
//  var _modelController: ModelController? = nil


}

