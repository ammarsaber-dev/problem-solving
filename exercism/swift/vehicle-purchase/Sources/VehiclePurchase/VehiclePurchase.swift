enum VehicleLicense {
    case motorcycle, automobile, commercialTruck, unlicensed
}

func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let monthsInFiveYears = 5.0 * 12.0
    let monthlyPayment = price / monthsInFiveYears
    let frugalLimit = monthlyBudget * 1.10

    switch monthlyPayment {
    case ...monthlyBudget:
        return "Yes! I'm getting a \(vehicle)"
    case ...frugalLimit:
        return "I'll have to be frugal if I want a \(vehicle)"
    default:
        return "Darn! No \(vehicle) for me"
    }
}

func licenseType(numberOfWheels wheels: Int) -> String {
    let license: VehicleLicense
    switch wheels {
    case 2, 3: license = .motorcycle
    case 4, 6: license = .automobile
    case 18: license = .commercialTruck
    default: license = .unlicensed
    }

    switch license {
    case .motorcycle: return "You will need a motorcycle license for your vehicle"
    case .automobile: return "You will need an automobile license for your vehicle"
    case .commercialTruck: return "You will need a commercial trucking license for your vehicle"
    case .unlicensed: return "We do not issue licenses for those types of vehicles"
    }
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
    let newRate = 80
    let usedRate = 70
    let oldRate = 50

    switch yearsOld {
    case ..<3: return (originalPrice * newRate) / 100
    case 10...: return (originalPrice * oldRate) / 100
    default: return (originalPrice * usedRate) / 100
    }
}
