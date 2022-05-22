//
//  ARCloudIos.swift
//  tabsapp
//
//  Created by bankbiz on 21/5/2565 BE.
//

import Foundation
import GraffityARCloudService
import UIKit

@objc(ARCloudIos)
class ARCloudIos : NSObject {
  let graffityARCloud = GraffityARCloud(accessToken: "ACCESS_TOKEN")
  var controller : UIViewController? = nil
  var arCloudVc: UIViewController? = nil
  
  @objc static func requiresMainQueueSetup() -> Bool {
    return false
  }
  
  @objc func open() -> Void {
    DispatchQueue.main.async {
      self._open()
    }
  }
  
  @objc func dismissView() {
    debugPrint("dismissView AR")
    self.controller?.dismiss(animated: true)
    self.arCloudVc?.removeFromParent()
    self.arCloudVc = nil
    self.controller = nil
    debugPrint("self.arCloudVc", self.arCloudVc as Any)
    debugPrint("self.controller", self.controller as Any)
  }
  
  func _open() -> Void {
    /// React Native controller
    self.controller = RCTPresentedViewController();
    
    /// ARCloudView
    self.arCloudVc = ARCloudUIView(service: graffityARCloud)
    self.arCloudVc?.modalPresentationStyle = .fullScreen
    
    /// Dismiss button
    let dismissButton = UIButton(type: .custom)
    dismissButton.setImage(UIImage(systemName: "arrow.backward"), for: .normal)
    dismissButton.setTitle("Back", for: .normal)
    dismissButton.frame = CGRect(x: 0.0, y: 0.0, width: 100.0, height: 50.0)
    dismissButton.center = CGPoint(x: 40.0, y: 40)
    dismissButton.setTitleColor(dismissButton.tintColor, for: .normal) // You can change the TitleColor
    if (self.controller != nil) {
      dismissButton.addTarget(self, action: #selector(dismissView), for: .touchUpInside)
    }
    
    /// Present ARCloudView
    if (self.arCloudVc != nil) {
      self.controller?.present(self.arCloudVc!, animated: true) {
        self.arCloudVc!.view.addSubview(dismissButton)
      }
    }
  }
}
