//
//  Constants.swift
//
//  Created by Umar.
//  Copyright © 2017. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import Toast_Swift
//import KeychainAccess

//AIzaSyB97z-hvwn2_JlVa_d4OOR8LEZwm3eptB4
//AIzaSyBtFCtM7zTYbwVm4J34ch4B4rD_BjrFKh4
//AIzaSyD7gl7LrxtbTjlplCXphN2EJi7HRi9s_8Y

/*
 App Store upload tips
 
 1) Change All +92 to +1 for us phone code
 2) Comment Dummy data methods
 3) Change URL to Live
 
 */
//AIzaSyBRbnGseuBpyMRbdonbGKFjnnITjG1nhQA new key generated
// MARK: - Google Maps Api Key
let googleApiKey = "AIzaSyD5CeW6_QRlRpp9-GGL2njemfgOAG7_joY"//AIzaSyBRbnGseuBpyMRbdonbGKFjnnITjG1nhQA, AIzaSyDNINSXAOO9DyNhQcnTs1EAEK9QyB5Pse4

//MARK :- Token
let kdeviceToken = "deviceToken"
let kTYpEIOS = "ios"
let kTouchID = "com.BioMetric"
//let keychain = Keychain(service: kTouchID)


//MARK:- Show Status and Show Reason
let kShowStatus = "showStatus"
let kShowReason = "showReason"


//MARK :- User Type
let kFacebookUser = "Facebook"
let kNativeUser = "Email"

//MARK :- Regex Strings
let RegexAllowOneDecimal = "^[0-9]*((\\.)[0-9]{0,2})?$"

//MARK :- Base Url

//-------------------Staging1--------------------------

/*
let baseUrl = "http://40.122.109.138:8081/api/JupiterApi/"
let ServerURL = "http://40.122.109.138:8081"
let Environment = "Stage"
*/

//-------------------Staging2-------------------------

let baseUrl = "https://fakestoreapi.com/products"
let ServerURL = "https://fakestoreapi.com/"
let Environment = "Stage"


// MARK: - Shared Application Object
let appDelet = UIApplication.shared.delegate as! AppDelegate


// MARK: - Storyboard IDs
let kSignupControllerID = "signupViewController"
let kLoginControllerID = "loginViewController"
let kWelcomeControllerID = "welcomeViewController"
let kTripHistoryControllerID = "tripHistoryViewController"
let kNavControllerID = "navigationController"
let kHomeControllerID = "homeViewController"
let kChangePasswordControllerID = "changePasswordViewController"
let kHelpControllerID = "helpViewController"
let kSettingControllerID = "settingViewController"
let kContactControllerID = "contactUsViewController"
let kFAQControllerID = "faqViewController"
let kFAQDetailControllerID = "faqDetailViewController"
let kSelectCategoryControllerID = "selectCategoryViewController"
let kLocationControllerID = "locationViewController"
let kGoodsDetailsControllerID = "goodsdetailsViewController"
let kFeedbackControllerID = "feedbackViewController"
let kAddCardControllerID = "addCardViewController"
let kCardListControllerID = "CardListViewController"//
let kTripDetailTwoControllerID = "detailTwoViewController"
let kSelectLocationControllerID = "selectLocationViewController"
let kItemDetailControllerID = "itemDetailViewController"
let kComplaintOneViewControllerID = "complaintOneViewController"
let kCancelReasonControllerID = "cancelReasonViewController"
let kResturantDetailControllerID = "detailScreenViewController"
let kResturantMenuDetailControllerID = "detailMenuViewController"
let kOrderHistoryControllerID = "orderHistorViewController"
let kMyProfileControllerID = "myProfileViewController"
let kMyEditProfileControllerID = "myEditProfileViewController"
let kSelectDateControllerID = "dateViewController"
let kArrivingforPickControllerID = "arrivingForPickViewController"
let kCreatePackageControllerID = "createPackageViewController"
let kCreatePackageDetailControllerID = "packageDetailViewController"

let kBloodSampleControllerID = "bloodSampleViewController"
let kBloodDetailControllerID = "bloodDetailViewController"
let kScanQRControllerID = "qrScanViewController"
let kDocumentControllerID = "documentViewController"
let kDocumentDetailControllerID = "docDetailViewController"
let kFoodDetailControllerID = "foodDetailViewController"

let kFoodControllerID = "foodViewController"
let kSearchingControllerID = "searchingDriverViewController"
let kDriverDetailsControllerID = "driverDetailsViewController"

let kTrackingControllerID = "trackingViewConntroller"

let kTripDetailControllerID = "tripDetailViewController"
let kTripDetailViewControllerID = "detailViewController"
let kGoodsDetailTwoViewControllerID = "goodsDetailTwoViewController"
let kEstimatedCostViewControllerID = "estimatedCostViewController"
let kHaulDetailsControllerID = "haulDetailViewController"
let kVerifyPhoneControllerID = "verifyPhoneViewController"
let kChangePhoneControllerID = "changePhoneViewController"
let kTypeControllerID = "selectTypeViewController"

let kGPSPopUp = "gpsPopUp"
let kDepartmentPopUp = "departmentPopUp"


// MARK:- Storyboards
let kMainStoryboard = "Main"
let kHomeStoryborad = "Home"
let kTripHistoryStoryboard = "TripHistory"
let kHelpStoryboard = "Help"
let kAddItemStoryboard = "AddItem"
let kReviewsStoryboard = "Reviews"
let kProfileStoryboard = "Profile"
let kChangePasswordStoryboard = "ChangePass"
let kFeedbackStoryboard = "Feedback"
let kAddCardStoryboard = "AddCard"
let kSettingsStroyboard = "Settings"
let kCreateRideStroyboard = "CreateRide"
let kCreatePackageStroyboard = "CreatePackage"
let kBloodSampleStroyboard = "BloodSample"
let kDocumentStroyboard = "Document"
let kFoodStroyboard = "Food"

//MARK:- Transaction Status
let kTransactionRejected = "Transaction Rejected"
let kDisputedPayment = "Disputed Payment"

//MARK:- Theme Colors
let kThemeDarkRedColor = UIColor(red: 89/255, green: 19/255, blue: 56/255, alpha: 1.0)
let klightGray = UIColor(red: 239/255, green: 239/255, blue: 244/255, alpha: 1.0)
let kTrasactionStatusGreenColor = UIColor(red: 52/255, green: 199/255, blue: 89/255, alpha: 1.0)
let kThemeRedColor = UIColor(red: 185/255, green: 29/255, blue: 35/255, alpha: 1.0)
let kTransactionGreenColor = UIColor(red: 0/255, green: 129/255, blue: 141/255, alpha: 1.0)
let kThemeColorGreen = UIColor(red: 50/255, green: 165/255, blue: 102/255, alpha: 1.0)
let kThemeDarkGreen = UIColor(red: 52/255, green: 199/255, blue: 89/255, alpha: 1.0)
let kGreenColor = UIColor(red: 50/255, green: 165/255, blue: 102/255, alpha: 1.0)
let kYellowTrip = UIColor(red: 255/255, green: 204/255, blue: 101/255, alpha: 1.0)
let kOrangeTrip = UIColor(red: 255/255, green: 149/255, blue: 0/255, alpha: 1.0)
let kBlueTrip = UIColor(red: 30/255, green: 144/255, blue: 255/255, alpha: 1.0)
//Hex Color Method:

func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }

    if ((cString.count) != 6) {
        return UIColor.gray
    }

    var rgbValue:UInt64 = 0
    Scanner(string: cString).scanHexInt64(&rgbValue)

    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}

//MARK: - Others
func showAlert(title: String, message: String, viewController: UIViewController) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
    alertController.addAction(okAction)
    viewController.present(alertController, animated: true, completion: nil)
}



//MARK:- Notification Identifiers

struct CompleteNotification {
    static let completeRideNotification = NSNotification.Name("CompleteOrderNotification")
}

struct AcceptRideNotification {
    static let acceptNotification = NSNotification.Name("acceptNotification")
}

struct MoveForPickupNotification {
    static let moveNotification = NSNotification.Name("moveNotification")
}

struct CancelRideNotification {
    static let cancelNotification = NSNotification.Name("CancelNotification")
}

struct ArriveForPickupNotification {
    static let arriveNotification = NSNotification.Name("arriveNotification")
}

struct StartRideNotification {
    static let startNotification = NSNotification.Name("startNotification")
}

/*
struct CompleteRideNotification {
    static let completeNotification = NSNotification.Name("completeNotification")
}*/

//Calculate height using content
func heightForText(text: String,Font: UIFont,Width: CGFloat) -> CGFloat{

    let constrainedSize = CGSize.init(width:Width, height: CGFloat(MAXFLOAT))
    let attributesDictionary = NSDictionary.init(object: Font, forKey:NSAttributedString.Key.font as NSCopying)
    let mutablestring = NSAttributedString.init(string: text, attributes: attributesDictionary as? [NSAttributedString.Key : Any])
    var requiredHeight = mutablestring.boundingRect(with:constrainedSize, options: NSStringDrawingOptions.usesFontLeading.union(NSStringDrawingOptions.usesLineFragmentOrigin), context: nil)
    if requiredHeight.size.width > Width {
        requiredHeight = CGRect.init(x: 0, y: 0, width: Width, height: requiredHeight.height)

    }
    return requiredHeight.size.height;
}

//MARK:- Copy db to documents dir

func copyDatabaseIfNeeded() {
    // Move database file from bundle to documents folder
    
    let bundlePath = Bundle.main.path(forResource: "Cart_db_v2", ofType: ".db")
    let destPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
    let fileManager = FileManager.default
    let fullDestPath = URL(fileURLWithPath: destPath).appendingPathComponent("Cart_db_v2.db")
    if fileManager.fileExists(atPath: fullDestPath.path){
        print("Database file is exist")
        print(fileManager.fileExists(atPath: bundlePath!))
        print("db path = \(destPath)")
    }else{
        do{
            try fileManager.copyItem(atPath: bundlePath!, toPath: fullDestPath.path)
        }catch{
            print("\n",error)
        }
    }
}

//MARK:- App Version
func getAppVersion() -> String {
    let appVersionString: String = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
    return "Version " + appVersionString
}

//MARK:- Random String

func randomString(length: Int) -> String {
  let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
  return String((0..<length).map{ _ in letters.randomElement()! })
}

func getDatabasePath() -> String {
    let destPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first! + "/Cart_db_v2.db"
    return destPath
}

func resetLocations(){
    
    setDefaultValue(keyValue: "sLatitude", valueIs: "")
    setDefaultValue(keyValue: "sLongitude", valueIs: "")
    setDefaultValue(keyValue: "dLatitude", valueIs: "")
    setDefaultValue(keyValue: "dLongitude", valueIs: "")
    setDefaultValue(keyValue: "sAddressName", valueIs: "")
    setDefaultValue(keyValue: "dAddressName", valueIs: "")
}

//MARK:- Enums

enum FilterType: String {
    case Default = "0"
    case ByStatus = "1"
    case ByAmount = "2"
    case ByName = "3"
    case ByCreatedDate = "4"
}


enum ActionType: Int {
    case AcceptPayment = 1
    case AcceptSettlement = 2
    case AcceptWaiver = 3
    case Acknowledge = 4
    case CustomMessage = 5
    case IhavePaid = 6
    case Pay = 7
    case Ping = 8
    case RejectReview = 9
    case RejectSettlement = 10
    case RejectTransaction = 11
    case RejectWaiver = 12
    case RequestWaiver = 13
    case ReviewTransaction = 14
    case SettlementDone = 15
    case TransactionHistory = 16
    case EditTransaction = 17
    case RejectEditReview = 18
}

func getActionString(Id: Int) -> String {
    switch Id {
    case 1:
        return "Accept Payment"
    case 2:
        return "Accept Settlement"
    case 3:
        return "Accept Waiver"
    case 4:
        return "Acknowledge"
    case 5:
        return "Custom Message"
    case 6:
        return "I have Paid"
    case 7:
        return "Pay"
    case 8:
        return "Ping"
    case 9:
        return "Reject Review"
    case 10:
        return "Reject Settlement"
    case 11:
        return "Reject Transaction"
    case 12:
        return "Reject Waiver"
    case 13:
        return "Request Waiver"
    case 14:
        return "Review Transaction"
    case 15:
        return "Settlement Done"
    case 16:
        return "Transaction History"
    default:
        return ""
    }
}

func printMyFonts() {
    print("--------- Available Font names ----------")
    for fontFamilyName in UIFont.familyNames{
        for fontName in UIFont.fontNames(forFamilyName: fontFamilyName){
            print("Family: \(fontFamilyName)     Font: \(fontName)")
        }
    }
}

func formattedNumber(number: String) -> String {
    //PK Format; //US Format
    // US code
    let cleanPhoneNumber = number.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
    let mask = "(XXX) XXX-XXXX" //(XXX) XXX-XXXX +92 is removed

    var result = ""
    var index = cleanPhoneNumber.startIndex
    for ch in mask where index < cleanPhoneNumber.endIndex {
        if ch == "X" {
            result.append(cleanPhoneNumber[index])
            index = cleanPhoneNumber.index(after: index)
        } else {
            result.append(ch)
        }
    }
    return result
}


//MARK: Base64 image conversions

func convertBase64ToImage(imageString: String) -> UIImage {
    let imageData = Data(base64Encoded: imageString, options: Data.Base64DecodingOptions.ignoreUnknownCharacters)!
    return UIImage(data: imageData)!
}

func convertImageToBase64(image: UIImage) -> String {
    let imageData = image.pngData()!
    return imageData.base64EncodedString(options: Data.Base64EncodingOptions.lineLength64Characters)
}


func isValidateEmail(email:String) -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailTest.evaluate(with: email)
}

func isValidData(_ input:String,regexPattern : String) -> Bool {
    do {
        if regexPattern != ""{
            let regex = try NSRegularExpression(pattern: regexPattern, options: NSRegularExpression.Options.caseInsensitive)
            if regex.firstMatch(in: input, options: [], range: NSRange(location: 0, length: input.utf16.count)) != nil {
                return true
            }
        }else{
            return true
        }
    } catch {
        // regex was bad!
    }
    return false
}


func showToast(animated: Bool = true, viewControl: UIViewController, titleMsg: String, msgTitle: String) {
    //viewControl.view.makeToast(msgTitle, duration: 3.0, position: .center)
    
    viewControl.view.makeToast(msgTitle, duration: 3.0, point: CGPoint(x: viewControl.view.frame.width/2, y: viewControl.view.frame.size.height - 100), title: "", image: nil) { didTap in //UIImage(named: "warning-icon")
        
        if didTap {
            //print("completion from tap")
        } else {
            //print("completion without tap")
        }
    }
}

//MARK:- User Defaults Methods
/*
func setUser(userObj: UserObj?) {
    //saving user
    
    let encodeData: Data = NSKeyedArchiver.archivedData(withRootObject: userObj)
    UserDefaults.standard.set(encodeData, forKey: "UserObj")
    UserDefaults.standard.synchronize()
}

func getUser() -> UserObj? {
    //retriving user
    if let decodeData = UserDefaults.standard.object(forKey: "UserObj") as? Data {
        let user = NSKeyedUnarchiver.unarchiveObject(with: decodeData) as? UserObj
        return user
    }
    return nil
}*/

func clearTouchIdFromKeychain(){
    setDefaultValue(keyValue: "LastLoginUser", valueIs: "")
    /*
    do {
        try keychain.remove("seceretPassword")
    } catch let error {
        print("error: \(error)")
    }*/
}

func setDefaultValue(keyValue: String, valueIs: String) {
    let usrdefault = UserDefaults.standard
    usrdefault.synchronize()
    usrdefault.set(valueIs, forKey: keyValue)
    usrdefault.synchronize()
}

func getValueForKey(keyValue: String) -> String {
    let defaults = UserDefaults.standard
    defaults.synchronize()
    UserDefaults.standard.synchronize()
    
    let valueForStr = defaults.value(forKey: keyValue)
    if(valueForStr != nil)
    {
        return valueForStr as! String
    }
    else{
        return ""
    }
}

func setSettingofSwitch(key: String, value: Bool) {
    let defaults = UserDefaults.standard
    defaults.set(value, forKey: key)
    UserDefaults.standard.synchronize()
}

func getSettingofSwitch(key: String) -> Bool {
    let defaults = UserDefaults.standard
    defaults.synchronize()
    UserDefaults.standard.synchronize()
    
    let valueForBool = defaults.bool(forKey: key)
    if valueForBool == true {
        return true
    }else{
        return false
    }
}

func UIColorFromRGB(rgbValue: UInt) -> UIColor {
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}


func formateTime(date: String) -> String {
    //date input formate
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "h:mm a"
    let convertedDate = dateFormatter.string(from: parseDateToTime(date))
    return convertedDate
}

func getCurrentDate() -> String {
    let date = Date()
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    formatter.timeZone = TimeZone(abbreviation: "UTC")
    
    let finalDate = formatter.string(from: date)
    return finalDate
}

func formatDate(date: String) -> String {
    //date input formate
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd MMM, yyyy"
    let convertedDate = dateFormatter.string(from: parseDateToDateFormat(date))
    return convertedDate
}

func parseDateToTime(_ str : String) -> Date {
    let dateFormat = DateFormatter()
    let splittedDate = str.split(separator: "T")
    let splittedTime = splittedDate[1].split(separator: ".")
    dateFormat.dateFormat = "HH:mm:ss"
    return dateFormat.date(from: String(splittedTime[0])) ?? Date()
}

func parseDateToDateFormat(_ str : String) -> Date {
    let dateFormat = DateFormatter()
    let splittedDate = str.split(separator: "T")
    dateFormat.dateFormat = "yyyy-MM-dd"
    return dateFormat.date(from: String(splittedDate[0])) ?? Date()
}

func formatDateForDisplay(date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy"
    return formatter.string(from: date)
}

func formatTimeForDisplay(date: Date) -> String {
    let formatter = DateFormatter()
    //formatter.timeZone = Locale(identifier: "en_US")
    formatter.dateFormat = "h:mm a"//HH:mm
    return formatter.string(from: date)
}

//MARK:- Method to get country code my sending short address
func getCountryPhonceCode (_ country : String) -> String {
    let countryDictionary  = ["AF":"+93",
                              "AL":"+355",
                              "DZ":"+213",
                              "AS":"+1",
                              "AD":"+376",
                              "AO":"+244",
                              "AI":"+1",
                              "AG":"+1",
                              "AR":"+54",
                              "AM":"+374",
                              "AW":"+297",
                              "AU":"+61",
                              "AT":"+43",
                              "AZ":"+994",
                              "BS":"+1",
                              "BH":"+973",
                              "BD":"+880",
                              "BB":"+1",
                              "BY":"+375",
                              "BE":"+32",
                              "BZ":"+501",
                              "BJ":"+229",
                              "BM":"+1",
                              "BT":"+975",
                              "BA":"+387",
                              "BW":"+267",
                              "BR":"+55",
                              "IO":"+246",
                              "BG":"+359",
                              "BF":"+226",
                              "BI":"+257",
                              "KH":"+855",
                              "CM":"+237",
                              "CA":"+1",
                              "CV":"+238",
                              "KY":"+345",
                              "CF":"+236",
                              "TD":"+235",
                              "CL":"+56",
                              "CN":"+86",
                              "CX":"+61",
                              "CO":"+57",
                              "KM":"+269",
                              "CG":"+242",
                              "CK":"+682",
                              "CR":"+506",
                              "HR":"+385",
                              "CU":"+53",
                              "CY":"+537",
                              "CZ":"+420",
                              "DK":"+45",
                              "DJ":"+253",
                              "DM":"+1",
                              "DO":"+1",
                              "EC":"+593",
                              "EG":"+20",
                              "SV":"+503",
                              "GQ":"+240",
                              "ER":"+291",
                              "EE":"+372",
                              "ET":"+251",
                              "FO":"+298",
                              "FJ":"+679",
                              "FI":"+358",
                              "FR":"+33",
                              "GF":"+594",
                              "PF":"+689",
                              "GA":"+241",
                              "GM":"+220",
                              "GE":"+995",
                              "DE":"+49",
                              "GH":"+233",
                              "GI":"+350",
                              "GR":"+30",
                              "GL":"+299",
                              "GD":"+1",
                              "GP":"+590",
                              "GU":"+1",
                              "GT":"+502",
                              "GN":"+224",
                              "GW":"+245",
                              "GY":"+595",
                              "HT":"+509",
                              "HN":"+504",
                              "HU":"+36",
                              "IS":"+354",
                              "IN":"+91",
                              "ID":"+62",
                              "IQ":"+964",
                              "IE":"+353",
                              "IL":"+972",
                              "IT":"+39",
                              "JM":"+1",
                              "JP":"+81",
                              "JO":"+962",
                              "KZ":"+77",
                              "KE":"+254",
                              "KI":"+686",
                              "KW":"+965",
                              "KG":"+996",
                              "LV":"+371",
                              "LB":"+961",
                              "LS":"+266",
                              "LR":"+231",
                              "LI":"+423",
                              "LT":"+370",
                              "LU":"+352",
                              "MG":"+261",
                              "MW":"+265",
                              "MY":"+60",
                              "MV":"+960",
                              "ML":"+223",
                              "MT":"+356",
                              "MH":"+692",
                              "MQ":"+596",
                              "MR":"+222",
                              "MU":"+230",
                              "YT":"+262",
                              "MX":"+52",
                              "MC":"+377",
                              "MN":"+976",
                              "ME":"+382",
                              "MS":"+1",
                              "MA":"+212",
                              "MM":"+95",
                              "NA":"+264",
                              "NR":"+674",
                              "NP":"+977",
                              "NL":"+31",
                              "AN":"+599",
                              "NC":"+687",
                              "NZ":"+64",
                              "NI":"+505",
                              "NE":"+227",
                              "NG":"+234",
                              "NU":"+683",
                              "NF":"+672",
                              "MP":"+1",
                              "NO":"+47",
                              "OM":"+968",
                              "PK":"+92",
                              "PW":"+680",
                              "PA":"+507",
                              "PG":"+675",
                              "PY":"+595",
                              "PE":"+51",
                              "PH":"+63",
                              "PL":"+48",
                              "PT":"+351",
                              "PR":"+1",
                              "QA":"+974",
                              "RO":"+40",
                              "RW":"+250",
                              "WS":"+685",
                              "SM":"+378",
                              "SA":"+966",
                              "SN":"+221",
                              "RS":"+381",
                              "SC":"+248",
                              "SL":"+232",
                              "SG":"+65",
                              "SK":"+421",
                              "SI":"+386",
                              "SB":"+677",
                              "ZA":"+27",
                              "GS":"+500",
                              "ES":"+34",
                              "LK":"+94",
                              "SD":"+249",
                              "SR":"+597",
                              "SZ":"+268",
                              "SE":"+46",
                              "CH":"+41",
                              "TJ":"+992",
                              "TH":"+66",
                              "TG":"+228",
                              "TK":"+690",
                              "TO":"+676",
                              "TT":"+1",
                              "TN":"+216",
                              "TR":"+90",
                              "TM":"+993",
                              "TC":"+1",
                              "TV":"+688",
                              "UG":"+256",
                              "UA":"+380",
                              "AE":"+971",
                              "GB":"+44",
                              "US":"+1",
                              "UY":"+598",
                              "UZ":"+998",
                              "VU":"+678",
                              "WF":"+681",
                              "YE":"+967",
                              "ZM":"+260",
                              "ZW":"+263",
                              "BO":"+591",
                              "BN":"+673",
                              "CC":"+61",
                              "CD":"+243",
                              "CI":"+225",
                              "FK":"+500",
                              "GG":"+44",
                              "VA":"+379",
                              "HK":"+852",
                              "IR":"+98",
                              "IM":"+44",
                              "JE":"+44",
                              "KP":"+850",
                              "KR":"+82",
                              "LA":"+856",
                              "LY":"+218",
                              "MO":"+853",
                              "MK":"+389",
                              "FM":"+691",
                              "MD":"+373",
                              "MZ":"+258",
                              "PS":"+970",
                              "PN":"+872",
                              "RE":"+262",
                              "RU":"+7",
                              "BL":"+590",
                              "SH":"+290",
                              "KN":"+1",
                              "LC":"+1",
                              "MF":"+590",
                              "PM":"+508",
                              "VC":"+1",
                              "ST":"+239",
                              "SO":"+252",
                              "SJ":"+47",
                              "SY":"+963",
                              "TW":"+886",
                              "TZ":"+255",
                              "TL":"+670",
                              "VE":"+58",
                              "VN":"+84",
                              "VG":"+284",
                              "VI":"+340"]
    if countryDictionary[country] != nil {
        return countryDictionary[country]!
    }
        
    else {
        return ""
    }
    
}

struct AppUtility {
    static func lockOrientation(_ orientation: UIInterfaceOrientationMask) {

        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            //delegate.orientationLock = orientation
        }
    }

    /// OPTIONAL Added method to adjust lock and rotate to the desired orientation
    static func lockOrientation(_ orientation: UIInterfaceOrientationMask, andRotateTo rotateOrientation:UIInterfaceOrientation) {

        self.lockOrientation(orientation)
        UIDevice.current.setValue(rotateOrientation.rawValue, forKey: "orientation")
        UINavigationController.attemptRotationToDeviceOrientation()
    }

}
