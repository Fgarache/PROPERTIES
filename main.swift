

struct Cuboid{
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double{
        return width * height * depth
    }
}

let cuboid = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print(cuboid.volume)
//cuboid.volume = 57.0 error, puesto que la variable es de solo lectura


//willSet // didSet

class StepCounter{
    var totalSteps: Int = 0{
        willSet(newTotalSteps){
            print("El número de pasos va a subir hasta \(newTotalSteps)")
        }
        didSet{
            if totalSteps > oldValue{
                print("El número de pasos ha incrementado en \(totalSteps - oldValue)")
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 300
stepCounter.totalSteps = 1234