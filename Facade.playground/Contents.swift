import UIKit

class FactoryFacade {
    private let subFactory1: SubFactory1
    private let subFactory2: SubFactory2
    
    init(subFactory1: SubFactory1 = SubFactory1(), subFactory2: SubFactory2 = SubFactory2()) {
        self.subFactory1 = subFactory1
        self.subFactory2 = subFactory2
    }
    
    func getFullOperation() {
        var result = "first factory work:"
        result += subFactory1.operation1()
        result += subFactory1.operationFinish()
        result += "\n" + "second factory work:"
        result += subFactory2.operation1()
        result += subFactory2.operationFinish()
        print(result)
    }
}

class SubFactory1 {
    func operation1() -> String {
        return "Operation 1 start"
    }
    
    func operationFinish() -> String {
        return "Operation 1 Finish"
    }
}

class SubFactory2 {
    func operation1() -> String {
        return "Operation 2 start"
    }
    
    func operationFinish() -> String {
        return "Operation 2 Finish"
    }
}

let factoryFasade = FactoryFacade()
factoryFasade.getFullOperation()
