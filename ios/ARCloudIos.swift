//
//  ARCloudIos.swift
//  tabsapp
//
//  Created by bankbiz on 21/5/2565 BE.
//

import Foundation
import GraffityARCloudService

@objc(ARCloudIos)
class ARCloudIos : NSObject {
  let graffityARCloud = GraffityARCloud(accessToken: "YOUR_ACCESS_TOKEN")
  
  @objc
  static func requiresMainQueueSetup() -> Bool {
    return false
  }
  
  @objc
  func open() -> Void {
    DispatchQueue.main.async {
      self._open()
    }
  }
  
  func _open() -> Void {
    let arCloudVc  = ARCloudUIView(service: graffityARCloud)
    arCloudVc.modalPresentationStyle = .fullScreen
    let controller = RCTPresentedViewController();
    
    controller?.present(arCloudVc, animated: true, completion: nil)
  }
}
