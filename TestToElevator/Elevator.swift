//
//  Elevator.swift
//  TestToElevator
//
//  Created by Berk Yeteroğlu on 8.09.2023.
//

import Foundation

protocol Elevator {
    func go(desiredFloor: Floor)
    func openDoor()
    func closeDoor()
}
