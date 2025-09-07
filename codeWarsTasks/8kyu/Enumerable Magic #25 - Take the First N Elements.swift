//
// codeWarsTasks
// Enumerable Magic #25 - Take the First N Elements.swift
//
// Created by HiRO on 07/09/2025
// Copyright © 2025 ACME. All Rights Reserved.


import Foundation

func take(_ arr: [Int], _ n: Int) -> [Int] {
    arr.count <= n ? arr : Array(arr[0..<n])
}
