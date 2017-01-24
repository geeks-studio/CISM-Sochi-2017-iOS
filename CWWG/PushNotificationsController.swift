//
//  PushNotificationsController.swift
//  CWWG
//
//  Created by Alexander Zimin on 24/01/2017.
//  Copyright © 2017 CWWG Team. All rights reserved.
//

import Foundation

struct PushNotificationsController {
  static func registerNotification(withToken token: Data) {
    let deviceTokenString = token.reduce("", {$0 + String(format: "%02X", $1)})
    registerNotification(withTokenString: deviceTokenString)
  }
  
  static func registerNotification(withTokenString tokenString: String) {
    print(tokenString)
    NetworkRequestsController.sendTokenToServer(tokenString: tokenString)
//    request(.POST, "http://blazemarquez.com/tokens.json", parameters: ["token":tokenString])
//      .response { (request, response, data, error) in
//        println("Token resp: \(response)")
//    }
  }
}