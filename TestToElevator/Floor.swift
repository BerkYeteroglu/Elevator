//
//  Floor.swift
//  TestToElevator
//
//  Created by Berk Yeteroğlu on 8.09.2023.
//

import Foundation

enum Floor: Int{
    
    case entrance = 0
    case first = 1
    case second = 2
    case third = 3
    case fourth = 4
    case fifth = 5
    
    func increase() -> Floor {
        switch self {
        case .entrance:
            return .first
        case .first:
            return .second
        case .second:
            return .third
        case .third:
            return .fourth
        case .fourth:
            return .fifth
        default:
            return self
        }
    }
    
    func decrease() -> Floor {
        switch self {
        case .first:
            return .entrance
        case .second:
            return .first
        case .third:
            return .second
        case .fourth:
            return .third
        case .fifth:
            return .fourth
        default:
            return self
        }
    }
}
