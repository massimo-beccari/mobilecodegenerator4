//
//  PreferenceHandler.swift
//  BookShelf//
//  Automatically generated by MobileCodeGenerator 3.
//  Copyright © 2017 . All rights reserved.
//

import Foundation

class PreferenceHandler{
    
    let defaults:UserDefaults = UserDefaults.standard
    
    func storeAccessEmail(value: String){
        
        defaults.set(value, forKey: "accessEmail");
    }
    
    func getAccessEmail() -> String?{
        
        if defaults.object(forKey: "accessEmail") != nil
        {
            return defaults.string(forKey: "accessEmail");
        }else{
            return nil
        }
    }
    
    func deleteAccessEmail(){
        
        defaults.removeObject(forKey: "accessEmail");
        defaults.synchronize()
    }
    
    func storePassword(value: String){
        
        defaults.set(value, forKey: "password");
    }
    
    func getPassword() -> String?{
        
        if defaults.object(forKey: "password") != nil
        {
            return defaults.string(forKey: "password");
        }else{
            return nil
        }
    }
    
    func deletePassword(){
        
        defaults.removeObject(forKey: "password");
        defaults.synchronize()
    }
    
    func storeUserSurname(value: String){
        
        defaults.set(value, forKey: "userSurname");
    }
    
    func getUserSurname() -> String?{
        
        if defaults.object(forKey: "userSurname") != nil
        {
            return defaults.string(forKey: "userSurname");
        }else{
            return nil
        }
    }
    
    func deleteUserSurname(){
        
        defaults.removeObject(forKey: "userSurname");
        defaults.synchronize()
    }
    
    func storeUserName(value: String){
        
        defaults.set(value, forKey: "userName");
    }
    
    func getUserName() -> String?{
        
        if defaults.object(forKey: "userName") != nil
        {
            return defaults.string(forKey: "userName");
        }else{
            return nil
        }
    }
    
    func deleteUserName(){
        
        defaults.removeObject(forKey: "userName");
        defaults.synchronize()
    }
    
    func storeBookCount(value: Int){
        
        defaults.set(value, forKey: "bookCount");
    }
    
    func getBookCount() -> Int{
        
        if defaults.object(forKey: "bookCount") != nil
        {
            return defaults.integer(forKey: "bookCount");
        }else{
            return 0
        }
    }
    
    func deleteBookCount(){
        
        defaults.removeObject(forKey: "bookCount");
        defaults.synchronize()
    }
    
    func getPrefDict() -> Dictionary<String, Any>{
        
        return UserDefaults.standard.dictionaryRepresentation()
    }
}
