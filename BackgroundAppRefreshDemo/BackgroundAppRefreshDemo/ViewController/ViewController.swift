//
//  ViewController.swift
//  BackgroundAppRefreshDemo
//
//  Created by Ramkrishna Sharma on 17/04/22.
//

import UIKit
import UserNotifications
import os.log

private let logger = Logger(subsystem: Bundle.main.bundleIdentifier!, category: "ViewController")

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        logger.debug(#function)

        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound]) { granted, error in
            if let error = error {
                logger.error("\(error.localizedDescription, privacy: .public)")
            }
        }
    }
}

