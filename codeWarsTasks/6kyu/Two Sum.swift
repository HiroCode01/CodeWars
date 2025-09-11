//
// codeWarsTasks
// Two Sum.swift
//
// Created by HiRO on 10/09/2025
// Copyright © 2025 ACME. All Rights Reserved.


import Foundation

func twoSum() {
    let numbers: [Double] = [1, 2, 3, 5]
    let target: Double = 7
    
    func twosum(numbers: [Double], target: Double) -> [Int] {
        var dict = [Int : Int]()
        
        for (index, number) in numbers.enumerated() {
            let complement = Int(target - number)
            if let complementIndex = dict[complement] {
                return [complementIndex, index]
            }
            dict[Int(number)] = index
        }
        return []
    }
    
    print(twosum(numbers: numbers, target: target))
}
