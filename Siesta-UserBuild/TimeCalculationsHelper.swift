//
//  TimeCalculationsService.swift
//  Siesta-UserBuild
//
//  Created by Pallak Singh on 20/07/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import Foundation
struct TimeCalculationsHelper {
    
   static func calculateWakeUpTime(_ readyTime: TimeInterval?, _ trafficDuration: TimeInterval?, _ reachTime: Date?) -> Date {
        let calendar = Calendar.current
        let readyPlusTraffic = -1*(trafficDuration! + readyTime!)
        let wakeUpTime = calendar.date(byAdding: .second, value: Int(readyPlusTraffic), to: reachTime!)
//        let formatter = DateFormatter()
//        formatter.dateFormat = "HH : mm"
    
    
        let wakeUpTimeComponents = calendar.dateComponents(in: .current, from: wakeUpTime!)
    
    
        print("the wake up time from timecalculationshelper is: \(wakeUpTimeComponents.hour!) : \(wakeUpTimeComponents.minute!)")

        let formatter = DateFormatter()
        formatter.dateFormat = "HH : mm"
        let wakeUpTimeString = formatter.date(from: "\(wakeUpTimeComponents.hour!) : \(wakeUpTimeComponents.minute!)")
    
    
        return wakeUpTimeString!
    }
}
