//
//  main.swift
//  TestToElevator
//
//  Created by Berk Yeteroğlu on 8.09.2023.
//

import Foundation

var elevator: Elevator = ResponsibleElevator()
elevator.openDoor()
elevator.go(desiredFloor: .fifth)
elevator.closeDoor()
elevator.openDoor()
elevator.go(desiredFloor: .third)
elevator.closeDoor()

