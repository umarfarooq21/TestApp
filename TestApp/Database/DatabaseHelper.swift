//
//  DatabaseHelper.swift
//  IslamicBundleSwift
//
//  Created by Muhammad Umair Qureshi on 4/30/19.
//  Copyright © 2019 Umar Farooq. All rights reserved.
//

import Foundation
import SQLite

class DatabaseHelper: NSObject {

    
    class func getItemByCartID(cartId: String) -> [productObj] {
        var arrAyats = [productObj]()
        
        do {
            let path = getDatabasePath()//Bundle.main.path(forResource: "ayahdb_v3", ofType: "db")!
            let db = try Connection(path)
            
            for row in try db.prepare("SELECT * FROM Cart where Cart .cartId = '\(cartId)'") {
                let obj = productObj()
                
                obj.productId = row[0] as! String
                obj.productTitle = row[1] as! String
                obj.productPrice = row[2] as! String
                obj.productDesc = row[3] as! String
                obj.productCategory = row[4] as! String
                obj.productImage = row[5] as! String
                
                arrAyats.append(obj)
                //print("id: \(String(describing: row[0])), name: \(String(describing: row[1]))")
            }
        } catch {
            //handle error
            print(error)
        }
        return arrAyats
    }
    
    
    //Mark favorite/unfav
    class func updateMarkFavorite(surahNo: String, ayahNo: String, favValue: Int) {
        
        do {
            let path = getDatabasePath()
            let db = try Connection(path)
            
            let query = "Update ayah set is_fav = \(favValue) where sura = \(surahNo) and aya = \(ayahNo)"
            
            print(query)
            
            do{
                try db.run(query)
            } catch{
                print(error)
            }
           
        } catch {
            //handle error
            print(error)
        }
        
    }
    
    //Mark favorite/unfav
    class func updateDailyAyah(surahId: String, date: String) {
        
        do {
            let path = getDatabasePath()
            let db = try Connection(path)
            
            let query = "Update ayah set date = '\(date)' where id = \(surahId)"
            
            print(query)
            
            do{
                try db.run(query)
            } catch{
                print(error)
            }
           
        } catch {
            //handle error
            print(error)
        }
        
    }
    
    class func CreateInsertLanguageTable(query: String) {
        
        do {
            /*
            let databaseFileName = "ayahdb_v3.db"
            let path = "\(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0])/\(databaseFileName)"
            */
            let path = getDatabasePath()
            
            let db = try Connection(path)
            //print("Path---> \(path)")
            
            let query = query
            
            do{
                try db.run(query)
            } catch{
                print(error)
            }
            
        } catch {
            print(error)
        }
        
    }
    
    class func tableExist(tableName: String) -> Bool {
        
        var tableExist: Bool = false
        
        do {
           
            let path = getDatabasePath()
            
            let db = try Connection(path)
            
            let count:Int64 = try db.scalar(
                "SELECT EXISTS(SELECT name FROM sqlite_master WHERE name = ?)", tableName
                ) as! Int64
            if count>0{
                tableExist = true
            }
            else{
                tableExist = false
            }
        } catch {
            print(error)
        }
        
        return tableExist
        
    }
    
    
   
    class func InsertItem(item: productObj) {
        
        do {
            let databaseFileName = "Products_db_v2.db"
            let path = "\(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0])/\(databaseFileName)"
            
            //let path = dbPath//Bundle.main.path(forResource: "Allah_names", ofType: "sqlite")!
            let db = try Connection(path)
            print("Path---> \(path)")
            
            let query = "Insert into Products (productId, productTitle, productPrice, productDesc, productCategory, productImage) values ( '\(item.productId)', '\(item.productTitle)', '\(item.productPrice)', '\(item.productDesc)', '\(item.productCategory)', '\(item.productImage)')"
            
            print(query)
            
            do{
                try db.run(query)
            } catch{
                print(error)
            }
            
        } catch {
            //handle error
            print(error)
        }
        
    }
    /*
    class func updateItem(item: productObj){
        
        do {
            
            let databaseFileName = "Products_db_v2.db"
            let path = "\(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0])/\(databaseFileName)"
            
            //let path = dbPath//Bundle.main.path(forResource: "Allah_names", ofType: "sqlite")!
            let db = try Connection(path)
            print("Path---> \(path)")
            
            let query = "Update Cart set itemName = '\(item.ItemName)', itemQuantity = '\(item.Quantity)', itemFragile = '\(item.IsFragile)', itemWidth = '\(item.Width)', itemHeight = '\(item.Height)', itemLength = '\(item.Length)', itemHelper = '\(item.IsHelpRequired)', itemInstructions = '\(item.Instructions)', pictureURL1 = '\(item.PictureURL1)', pictureURL2 = '\(item.PictureURL2)', pictureURL3 = '\(item.PictureURL3)', pictureURL4 = '\(item.PictureURL4)', pictureURL5 = '\(item.PictureURL5)' where cartId = '\(item.cartId)' and itemName = '\(item.ItemName)'"
            
            print(query)
            
            do{
                try db.run(query)
            } catch{
                print(error)
            }
            
        } catch {
            //handle error
            print(error)
        }
    }*/
    
    class func DeleteItem(cardId: String, ItemName: String) {
        
        do {
            let databaseFileName = "Products_db_v2.db"
            let path = "\(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0])/\(databaseFileName)"
    
            let db = try Connection(path)
            let query = "Delete from Cart where cartId = '\(cardId)' and itemName = '\(ItemName)'"
            
            print(query)
            
            do{
                try db.run(query)
            } catch{
                print(error)
            }
            
        } catch {
            //handle error
            print(error)
        }
        
    }
    
   
    
}
