//
//  StoreManager.swift
//  LessonsApp
//
//  Created by Денис Андреев on 03.02.2020.
//  Copyright © 2020 Денис Андреев. All rights reserved.
//

import UIKit
import StoreKit

class StoreManager: NSObject {
    class func didBuyFullVersion(){
        UserDefaults.standard.set(true, forKey: "FullVersion")
        UserDefaults.standard.synchronize()
    }
    
    class var isFullVersion:Bool {
        return UserDefaults.standard.bool(forKey: "FullVersion")
    }
    
    func buyiInApp(inAppId:String){
        if !SKPaymentQueue.canMakePayments() {
            print("you cant")
            return
        }
        let request = SKProductsRequest(productIdentifiers: [inAppId])
        request.delegate = self
    }
}

extension StoreManager : SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        if response.products.count > 0 {
            let skProduct = response.products[0]
            let skPayment = SKPayment(product: skProduct)
            SKPaymentQueue.default().add(skPayment)
        }
    }
    
    
}
