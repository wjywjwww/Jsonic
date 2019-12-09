//
//  StringExtensions.swift
//  JsonMagic
//
//  Created by DoubleHH on 2019/12/5.
//  Copyright © 2019 Beijing SF Intra-city Technology Co., Ltd. All rights reserved.
//

import Foundation

extension String.SubSequence {
    /// substring with range. If range is illeagal, return nil
    ///
    /// - Parameter range: indicate start and end. like 0..<2
    /// - Returns: sub or nil
    public func partly(range: Range<Int>) -> String? {
        return partly(from: range.lowerBound, to: range.upperBound)
    }
    
    /// substring from index
    public func partly(from: Int) -> String? {
        return partly(from: from, to: self.count)
    }
    
    /// substring with end index of (to - 1), from 0
    public func partly(to: Int) -> String? {
        return partly(from: 0, to: to)
    }
    
    private func partly(from: Int, to: Int) -> String? {
        guard from >= 0, to <= self.count, from < to else { return nil }
        let fromIndex = self.index(self.startIndex, offsetBy: from)
        let toIndex = self.index(self.startIndex, offsetBy: to)
        return String(self[fromIndex..<toIndex])
    }
}

/// substring
extension String {
    
    /// substring with range. If range is illeagal, return nil
    ///
    /// - Parameter range: indicate start and end. like 0..<2
    /// - Returns: sub or nil
    public func partly(range: Range<Int>) -> String? {
        return partly(from: range.lowerBound, to: range.upperBound)
    }
    
    /// substring from index
    public func partly(from: Int) -> String? {
        return partly(from: from, to: self.count)
    }
    
    /// substring with end index of (to - 1), from 0
    public func partly(to: Int) -> String? {
        return partly(from: 0, to: to)
    }
    
    private func partly(from: Int, to: Int) -> String? {
        guard from >= 0, to <= self.count, from < to else { return nil }
        let fromIndex = self.index(self.startIndex, offsetBy: from)
        let toIndex = self.index(self.startIndex, offsetBy: to)
        return String(self[fromIndex..<toIndex])
    }
}
