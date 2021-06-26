import UIKit

class CalculatorVC: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var dayTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    
    @IBOutlet weak var timeType: UISegmentedControl!
    @IBOutlet weak var hourTF: UITextField!
    @IBOutlet weak var minutesTF: UITextField!
    
    @IBOutlet weak var saveResultSwitch: UISwitch!
    
    @IBOutlet weak var calculateButton: UIButton!
    
    var userName = String()
    
    var birthDay = Int()
    var birthMonth = Int()
    var birthYear = Int()
    
    var birthTimeType = String()
    var birthTimeHour = Int()
    var birthTimeMinute = Int()
    
    var horoscope = String()
    
    var saveResult = true
    
    var savedArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Horoscope Calculator"
        navigationController?.navigationBar.prefersLargeTitles = true
        calculateButton.layer.cornerRadius = 25
        savedArray = UserDefaults.standard.stringArray(forKey: "savedData") ?? []
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        if let name = nameTF.text {
            userName = name
        }
        if let day = dayTF.text {
            birthDay = Int(day) ?? 0
        }
        if let month = monthTF.text {
            birthMonth = Int(month) ?? 0
        }
        if let year = yearTF.text {
            birthYear = Int(year) ?? 0
        }
        saveResult = saveResultSwitch.isOn
        
        func getMonth(month:Int) -> String {
            switch month {
            case 01:
                return "Jan"
            case 02:
                return "Feb"
            case 03:
                return "Mar"
            case 04:
                return "Apr"
            case 05:
                return "May"
            case 06:
                return "Jun"
            case 07:
                return "Jul"
            case 08:
                return "Aug"
            case 09:
                return "Sep"
            case 10:
                return "Oct"
            case 11:
                return "Nov"
            case 12:
                return "Dec"
            default:
                return "Error"
            }
        }
        
        let month = getMonth(month: birthMonth)
        
        if userName != "" && birthDay != 0 && birthMonth != 0 && birthYear != 0 {
            if month == "Jan" && birthDay >= 20 || month == "Feb" && birthDay <= 18 {
                horoscope = "aquarius"
            } else if month == "Feb" && birthDay >= 19 || month == "Mar" && birthDay <= 20 {
                horoscope = "pisces"
            } else if month == "Mar" && birthDay >= 21 || month == "Apr" && birthDay <= 19 {
                horoscope = "aries"
            } else if month == "Apr" && birthDay >= 20 || month == "May" && birthDay <= 20 {
                horoscope = "taurus"
            } else if month == "May" && birthDay >= 21 || month == "Jun" && birthDay <= 21 {
                horoscope = "gemini"
            } else if month == "Jun" && birthDay >= 22 || month == "Jul" && birthDay <= 22 {
                horoscope = "cancer"
            } else if month == "Jul" && birthDay >= 23 || month == "Aug" && birthDay <= 22 {
                horoscope = "leo"
            } else if month == "Aug" && birthDay >= 23 || month == "Sep" && birthDay <= 22 {
                horoscope = "virgo"
            } else if month == "Sep" && birthDay >= 23 || month == "Oct" && birthDay <= 23 {
                horoscope = "libra"
            } else if month == "Oct" && birthDay >= 24 || month == "Nov" && birthDay <= 21 {
                horoscope = "scorpio"
            } else if month == "Nov" && birthDay >= 22 || month == "Dec" && birthDay <= 21 {
                horoscope = "sagittarius"
            } else if month == "Dec" && birthDay >= 22 || month == "Jan" && birthDay <= 19 {
                horoscope = "capricorn"
            } else {
                print("Error!")
            }
        }
        performSegue(withIdentifier: "toResultVC", sender: nil)
        let birthDayData = String(birthDay) + "." + String(birthMonth) + "." + String(birthYear)
        savedArray.append(userName + ", " + horoscope.capitalized + ", " + birthDayData)
        if saveResult == true {
            UserDefaults.standard.setValue(savedArray, forKey: "savedData")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultVC" {
            let destinationVC = segue.destination as! calculateResultVC
            destinationVC.horoscopeName = horoscope
        }
    }
    
}
