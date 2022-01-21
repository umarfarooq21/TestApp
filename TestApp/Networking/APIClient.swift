//
//  APIClient.swift
//
//  Created by umar on 9/14/17.
//  Copyright © 2017. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper
import CoreLocation
import CoreTelephony
import SystemConfiguration
import PKHUD
import JGProgressHUD

class APIClient: NSObject {
    
    static let shared = APIClient()
    var manager: SessionManager {
        let manager = Alamofire.SessionManager.default
        manager.session.configuration.timeoutIntervalForRequest = 5
        return manager
    }
    
    static func isConnectedToNetwork() -> Bool {
        if Reachability.isConnectedToNetwork() == true {
            return true
        }
        else {
            return false
        }
    }
    
    
    /*!
     * Product Request
     */
    
    static func GetProductsRequest( block: ((_ response: Json4Swift_Base?, _ error:Error?, _ message:String?) -> Void)?) {
        
       
        Alamofire.request("https://fakestoreapi.com/products", method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { (response:DataResponse<Any>) -> Void in
                    switch response.result {
                    case .success:
                        if let data = response.result.value as? Dictionary<String, AnyObject> {
                            //self.array = data["contacts"] as! Array<Dictionary<String, AnyObject>>
                        }
        //                self.data = response.result.value as? [String, AnyObject]
                        break
                    case .failure:
                        print("Error")
                    }
            
            

                }
        
        
        
        
        
        
        let window = UIApplication.shared.windows.first
        
        let hud = JGProgressHUD(style: .dark)
        if UIDevice.current.userInterfaceIdiom == .pad {
            hud.transform = hud.transform.scaledBy(x: 2, y: 2)
        }
        
        hud.show(in: window!)
        
        let URL = baseUrl
    
        var param = Parameters()
        /*
        param = [
            "Email" : email,
            "Password" : password,
            "AuthCode" : authCode,
            "LastLat" : lat,
            "LastLong" : long,
            "DeviceVersion" : getAppVersion(),
            "DeviceType" : "IOS",
            "DeviceToken" : token
        ]*/
        
        print(param)
        
        
        Alamofire.request(URL, method: .post, parameters: nil, encoding: URLEncoding.default, headers: nil).responseObject { (response: DataResponse<Json4Swift_Base>) in
            //PKHUD.sharedHUD.hide()
            hud.dismiss(afterDelay: 0.0)
            
            var error: Error?
            var message: String?
            var userObj: Json4Swift_Base?
            
            if let code = response.response?.statusCode {
                let baseResponce = response.result.value
                if code == 200 {
                    /*
                    if baseResponce?.status == "False" {
                        
                        if baseResponce?.message == "Phone Number is not verified, please verify your phone number" {
                            userObj = baseResponce
                        }else{
                            message = baseResponce?.message!
                        }
                        
                    }else{
                        userObj = baseResponce
                    }*/
                    userObj = baseResponce
                    
                }else{
                    //message = baseResponce?.message!
                }
            }else{
                error = response.result.error
                message = error?.localizedDescription
            }
            
            if block != nil {
                block!(userObj, error, message)
            }
        }
    }
    
    /*!
     * SignUp Request
     */
    
   /*
    static func SignUpRequest(isWithCard: Bool, userObject: userObject, isPic: Bool, UserImage: UIImage?, block: ((_ response: UserResponse?, _ error:Error?, _ message:String?) -> Void)?) {
        
        let window = UIApplication.shared.windows.first
        
        let hud = JGProgressHUD(style: .dark)
        if UIDevice.current.userInterfaceIdiom == .pad {
            hud.transform = hud.transform.scaledBy(x: 2, y: 2)
        }
        
        hud.show(in: window!)
        
        let URL = baseUrl+"\(kApiSignup)"
        let token = getValueForKey(keyValue: kdeviceToken)
        
        //let headers: HTTPHeaders = ["Content-Type" : "application/form-data"]//application/x-www-form-urlencoded
        //if (allowEmail = true) ? "Pass" : "Fail"
        
        var param = Parameters()
       
        if isWithCard {
            param = [
                "AuthCode" : authCode,
                "FirstName" : userObject.fname,
                "LastName": userObject.lname,
                "DateOfBirth": userObject.dob,
                "Email" : userObject.email,
                "Phone" : userObject.phone .replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "(", with: "").replacingOccurrences(of: ")", with: "").replacingOccurrences(of: "-", with: ""),
                "CityId" : userObject.cityId,
                "StateId" : userObject.stateId,
                "CountryId" : userObject.countryId,
                "Zip" : userObject.zipCode,
                "Password" : userObject.password,
                "DeviceVersion" : getAppVersion(),
                "DeviceType" : "IOS",
                "CityName" : userObject.cityName,
                "StateName" : userObject.stateName,
                "CountryName" : userObject.countryName,
                "DeviceToken" : token,
                
                "CreditCardNo" : userObject.cardNo,
                "CardExpire" : userObject.expiry,
                "CVV" : userObject.cvv,
                "IsDefaultCard" : "1"
                
            ]
        }else{
            param = [
                "AuthCode" : authCode,
                "FirstName" : userObject.fname,
                "LastName": userObject.lname,
                "DateOfBirth": userObject.dob,
                "Email" : userObject.email,
                "Phone" : userObject.phone .replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "(", with: "").replacingOccurrences(of: ")", with: "").replacingOccurrences(of: "-", with: ""),
                "CityId" : userObject.cityId,
                "StateId" : userObject.stateId,
                "CountryId" : userObject.countryId,
                "Zip" : userObject.zipCode,
                "Password" : userObject.password,
                "DeviceVersion" : getAppVersion(),
                "DeviceType" : "IOS",
                "CityName" : userObject.cityName,
                "StateName" : userObject.stateName,
                "CountryName" : userObject.countryName,
                "DeviceToken" : token
                
            ]
        }
       
        
        var error: Error?
        var message: String?
        var userObj: UserResponse?
        
        print(param)
        print(URL)
        
        Alamofire.upload(multipartFormData:{ multipartFormData in
            
            if isPic {
                if let data = UserImage!.jpegData(compressionQuality: 0.4) {
                   multipartFormData.append(data, withName: "PictureURL", fileName: "image.jpeg",mimeType: "image/jpeg")
                 }
            }
            
            for (key, value) in param {
                
                if value is String {
                    multipartFormData.append((value as AnyObject).data(using: String.Encoding.utf8.rawValue)!, withName: key)
                } else if value is Int {
                    multipartFormData.append(("\(value)" as AnyObject).data(using: String.Encoding.utf8.rawValue)!, withName: key)
                }
                //multipartFormData.append((value as AnyObject).data(using: .utf8)!, withName: key)
            }
            
            
        },
         usingThreshold:UInt64.init(),
         to:URL,
         method:.post,
         headers:nil,
         encodingCompletion: { encodingResult in
            
            switch encodingResult {
                
            case .success(let upload, _, _):
                //Showing progress of uploading
                upload.uploadProgress(closure: {(progress) in
                    //let tenPercent = 10 / 100 * progress.fractionCompleted
                    //let newProgress = progress.fractionCompleted - tenPercent
                    //SVProgressHUD.showProgress(Float(newProgress), status: "File Uploading Progress")
                })
                
                
                upload.responseObject(completionHandler: { (response: DataResponse<UserResponse>) in
                    //PKHUD.sharedHUD.hide()
                    hud.dismiss(afterDelay: 0.0)
                    
                    if let code = response.response?.statusCode {
                        let baseResponce = response.result.value
                        if code == 200 {
                            userObj = baseResponce
                        }else{
                            message = baseResponce?.message!
                        }
                    }else{
                        error = response.result.error
                        message = error?.localizedDescription
                    }
                    
                    if block != nil {
                        block!(userObj, error, message)
                    }
                })
                
            case .failure(let encodingError):
                print(encodingError)
                //PKHUD.sharedHUD.hide()
                hud.dismiss(afterDelay: 0.0)
                if block != nil {
                    block!(userObj, error, message)
                }
            }
        })
        
    }*/
    
    
}

// MARK: - Reachablity
public class Reachability {
    
    class func isConnectedToNetwork() -> Bool {
        
        var zeroAddress = sockaddr_in(sin_len: 0, sin_family: 0, sin_port: 0, sin_addr: in_addr(s_addr: 0), sin_zero: (0, 0, 0, 0, 0, 0, 0, 0))
        zeroAddress.sin_len = UInt8(MemoryLayout.size(ofValue: zeroAddress))
        zeroAddress.sin_family = sa_family_t(AF_INET)
        
        let defaultRouteReachability = withUnsafePointer(to: &zeroAddress) {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {zeroSockAddress in
                SCNetworkReachabilityCreateWithAddress(nil, zeroSockAddress)
            }
        }
        
        var flags: SCNetworkReachabilityFlags = SCNetworkReachabilityFlags(rawValue: 0)
        if SCNetworkReachabilityGetFlags(defaultRouteReachability!, &flags) == false {
            return false
        }
        
        // Working for Cellular and WIFI
        let isReachable = (flags.rawValue & UInt32(kSCNetworkFlagsReachable)) != 0
        let needsConnection = (flags.rawValue & UInt32(kSCNetworkFlagsConnectionRequired)) != 0
        let ret = (isReachable && !needsConnection)
        
        return ret
        
    }
}
