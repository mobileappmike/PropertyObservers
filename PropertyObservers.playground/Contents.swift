import Foundation

var caloriesToday : Int = 0 {
    willSet(newCalorieValue) {
        if newCalorieValue > 2500 {
            print("You exceeded your daily limit of 2500 calories. You're now at \(newCalorieValue) calories. I suggest you work out or eat less.")
        }
    }
    didSet {
        if caloriesToday > oldValue {
            print("Your last addition added \(caloriesToday - oldValue) calories to your daily total")
        } else {
            print("There's no shortcuts y'all. Enter a positive number")
            caloriesToday = oldValue
        }
    }
}

caloriesToday = -4
caloriesToday = 2800
