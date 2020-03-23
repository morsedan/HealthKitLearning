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
    
    var healthStore: HKHealthStore!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getWorkouts()
    }
    
    func getWorkouts() {
        if HKHealthStore.isHealthDataAvailable() {
            healthStore = HKHealthStore()
            print("Available", healthStore)
            performQuery()
        }
    }
    
    func performQuery() {
        print("performQuery")
        guard let sampleType = HKSampleType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRate) else {
            fatalError("*** This method should never fail ***")
        }
        let query = HKSampleQuery(sampleType: sampleType, predicate: nil, limit: Int(HKObjectQueryNoLimit), sortDescriptors: nil) { (query, samples, error) in
            print("inside query")
            print(query, samples?.count, error)
        }
        healthStore.execute(query)
    }


}

