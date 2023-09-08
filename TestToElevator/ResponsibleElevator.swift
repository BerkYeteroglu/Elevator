//
//  ResponsibleElevator.swift
//  TestToElevator
//
//  Created by Berk Yeteroğlu on 8.09.2023.
//

import Foundation

class ResponsibleElevator: Elevator{
    
    private var isElevatorStopped: Bool = true
    private var isDoorOpen: Bool = false
    private var currentFloor: Floor = .entrance
    private var currentCapacity: Int = 0
    
    private let CAPACITY: Int = 500
    
    func go(desiredFloor: Floor) {
        var compare = currentFloor.rawValue - desiredFloor.rawValue
        while(compare != 0){
            if(compare < 0){
                goUp()
            }
            else{
                goDown()
            }
            compare = currentFloor.rawValue - desiredFloor.rawValue
        }
        isElevatorStopped = true
        openDoor()
    }
    
    func openDoor() {
        if(isElevatorStopped){
            isDoorOpen = true
        }
        print("Door is opening...")
    }
    
    func closeDoor() {
        currentCapacity = calculateCapacity()
        if(currentCapacity <= CAPACITY){
            isDoorOpen = false
            isElevatorStopped = false
            print("Door is closing...")
        }
        else{
            print("The carrying capacity of the elevator has been exceeded.")
        }
    }
    
    func goUp(){
        if(isDoorOpen){
            closeDoor()
        }
        if((currentFloor.rawValue - Floor.fifth.rawValue) < 0){
            print("Going up!!")
            currentFloor = currentFloor.increase()
            print(currentFloor)
        }
        else{
            print("Already on top floor.")
            print(currentFloor)
        }
        isElevatorStopped = true
    }
    
    func goDown(){
        if(isDoorOpen){
            closeDoor()
        }
        if((currentFloor.rawValue - Floor.entrance.rawValue) > 0){
            print("Going down!!")
            currentFloor = currentFloor.decrease()
            print(currentFloor)
        }
        else{
            print("Already on bottom floor.")
            print(currentFloor)
        }
        isElevatorStopped = true
        openDoor()
    }
    
    func calculateCapacity() -> Int{
        let randomPerson = Int.random(in: 1..<6)
        let randomWeight = Int.random(in: 5..<150)
        let capacity = randomPerson * randomWeight
        return capacity
    }
}
