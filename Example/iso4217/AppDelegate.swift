//
//  AppDelegate.swift
//  iso4217
//
//  Created by Sergey Galezdinov on 04/30/2017.
//  Copyright (c) 2017 Sergey Galezdinov. All rights reserved.
//

import UIKit
import iso4217

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        let firstPrice = Price(value: 15, currency: .rub)
        print("\(firstPrice)")

        let secondPrice = Price(value: 50, currency: .usd)
        let string = String(describing: secondPrice)
        print(string)
        print(secondPrice.format(minimumFractionDigits: 2, decimalSeparator: "."))

        let thirdPrice = Price(value: 100, currency: .gbp)
        debugPrint(thirdPrice)

        if let price = Price(value: 10.1, isoCode: "EUR") {
            print(price)
        } else {
            print("sorry, bad luck")
        }
        
        return true
    }
    
}

