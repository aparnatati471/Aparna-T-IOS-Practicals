//Create a swift class example which has a parent class for vehicles, and child classes for two different vehicles e.g. (bike & car). You need to use common properties and method in the parent class and inside child class, there will be some different property which is not common.

class Vehicle {
    
    var speed = 0.0
    var description: String {
        return "travelling at speed \(speed) miles per hour"
    }
    var wheels = 0
    var noOfPassangers = 0
    
    func makeNoise() {}
    
}

class Bike: Vehicle {
    
    var musicSystem = false
    
    override func makeNoise() {
        print("The Bike makes more noise than car")
    }
    
}

class Car: Vehicle {
    
    var airConditioner = true
    
    override func makeNoise() {
        print("The Car makes less noise than Bike")
    }
    
}

var objBike = Bike()
objBike.speed = 20.5
objBike.wheels = 2
objBike.noOfPassangers = 2

print("Bike:- \nSpeed = \(objBike.description) \nWheels = \(objBike.wheels) \nPassangers = \(objBike.noOfPassangers) \nMusic System = \(objBike.musicSystem)")

objBike.makeNoise() // Expected Output : 20.5 2 2 false The Bike makes more noise than car

var objCar = Car()
objCar.speed = 40.55
objCar.wheels = 4
objCar.noOfPassangers = 4

print("\nCar:- \nSpeed = \(objCar.description) \nWheels = \(objCar.wheels) \nPassangers = \(objCar.noOfPassangers) \nAir Conditioner System = \(objCar.airConditioner)")

objCar.makeNoise() // Expected Output : 40.55 4 4 true The Car makes less noise than Bike
