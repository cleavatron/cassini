//
//  CassiniViewController.swift
//  Cassini
//
//  Created by Ahmad Fairiz on 06/09/2017.
//  Copyright © 2017 Recite Lab. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController
{

  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
      if let url = DemoURL.NASA[segue.identifier ?? ""]{
        if let imageVC = (segue.destination.contents as? ImageViewController){
          imageVC.imageURL = url
          imageVC.title = (sender as? UIButton)?.currentTitle
        }
      }
      
    }
  
}

extension UIViewController{
  
  var contents: UIViewController{
    if let navcon = self as? UINavigationController{
      return navcon.visibleViewController ?? self
    }else{
      return self
    }
  }
}
