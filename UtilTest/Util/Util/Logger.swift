//
//  Logger.swift
//  Util
//
//  Created by 찬호백 on 2020/01/05.
//  Copyright © 2020 Chan-Ho Beak. All rights reserved.
//

import Foundation

public enum logLevel:String{
    case none = ""
    case success = "✅"
    case warning = "⚠️"
    case error = "☣️"
}

open class OpenLogger {
    open func opnelogMessage(log: String, level: logLevel, file:String = #file, line:Int = #line){
        print(level.rawValue, file, line, log)
    }
    
    public static func publiclogMessage(log: String){
        print(log)
    }
    
    internal static func internallogMessage(log: String){
        print(log)
    }
    
    fileprivate static func fileprivatelogMessage(log: String){
        print(log)
    }
    
    private static func privatelogMessage(log: String){
        print(log)
    }
}

public class PublicLogger {
    open func opnelogMessage(log: String){
        print(log)
    }
    
    public static func publiclogMessage(log: String){
        print(log)
    }
    
    internal static func internallogMessage(log: String){
        print(log)
    }
    
    fileprivate static func fileprivatelogMessage(log: String){
        print(log)
    }
    
    private static func privatelogMessage(log: String){
        print(log)
    }
}


class InternalLogger {
    open func opnelogMessage(log: String){
        print(log)
    }
    
    public static func publiclogMessage(log: String){
        print(log)
    }
    
    internal static func internallogMessage(log: String){
        print(log)
    }
    
    fileprivate static func fileprivatelogMessage(log: String){
        print(log)
    }
    
    private static func privatelogMessage(log: String){
        print(log)
    }
}
