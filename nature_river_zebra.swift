import UIKit

final class LowCostDentalCareService {
    
    //MARK: Properties
    private var services: [Service] = []
    private var packages: [Package] = []
    
    //MARK: Initialization
    init() {
        initServices()
        initPackages()
    }
    
    //MARK: Private methods
    private func initServices() {
        let exam = Service(name: "Exam", cost: 25)
        let xray = Service(name: "X-Ray", cost: 75)
        let cleaning = Service(name: "Cleaning", cost: 100)
        let filling = Service(name: "Filling", cost: 200)
        let crown = Service(name: "Crown", cost: 500)
        let rootCanal = Service(name: "Root Canal", cost: 450)
        
        services.append(contentsOf: [exam, xray, cleaning, filling, crown, rootCanal])
    }
    
    private func initPackages() {
        let basicPackage = Package(name: "Basic Package", list: [services[0], services[1], services[2]], cost: 225)
        let majorPackage = Package(name: "Major Package", list: [services[3], services[4], services[5]], cost: 1150)
        
        packages.append(contentsOf: [basicPackage, majorPackage])
    }
    
    //MARK: Internal methods
    func getAllServices() -> [Service] {
        return services
    }
    
    func getServices(withName name: String) -> Service? {
        return services.first { (service) -> Bool in
            return service.name == name
        }
    }
    
    func getAllPackages() -> [Package] {
        return packages
    }
    
    func getPackage(withName name: String) -> Package? {
        return packages.first { (package) -> Bool in
            return package.name == name
        }
    }
}

final class Service {
    let name: String
    let cost: Float
    
    init(name: String, cost: Float) {
        self.name = name
        self.cost = cost
    }
}

final class Package {
    let name: String
    let list: [Service]
    let cost: Float
    
    init(name: String, list: [Service], cost: Float) {
        self.name = name
        self.list = list
        self.cost = cost
    }
}