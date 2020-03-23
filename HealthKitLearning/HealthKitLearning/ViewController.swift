//
//  ViewController.swift
//  HealthKitLearning
//
//  Created by morse on 3/21/20.
//  Copyright © 2020 morse. All rights reserved.
//

import UIKit
import HealthKit

class ViewController: UIViewController {
    
    let healthStore = HKHealthStore()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getWorkouts()
    }
    
    func getWorkouts() {
        if HKHealthStore.isHealthDataAvailable() {
            print("Available", healthStore)
            healthStore.
        }
    }


}

