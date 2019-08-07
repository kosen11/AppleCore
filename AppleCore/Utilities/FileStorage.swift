//
//  FileStorage.swift
//  iOSReports
//
//  Created by Ray Pietz on 6/18/19.
//  Copyright © 2019 talech Inc. All rights reserved.
//

import UIKit

class FileStorage: NSObject {
    static func documentDirectory() -> String {
        return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
    }
    
    static func filePath(fileName: String!) -> String {
        return documentDirectory() + fileName
    }
    
//    static func readDataFile<T>(fileName: String!, callback: ((T?) -> Void)?) {
//        DispatchQueue.global().async {
//            let file = filePath(fileName: fileName)
//            
//            do {
//                let data = try NSData(contentsOfFile: file, options: .uncached) as Data
//                let savedObject: T = NSKeyedUnarchiver.unarchiveObject(with: data) as! T
//                
//                sendObjectCallback(callback: callback, result: savedObject)
//            } catch {
//                sendObjectCallback(callback: callback, result: nil)
//            }
//        }
//    }
    
    static func saveDataFile(fileName: String!, saveObject: NSSecureCoding, callback: ((Bool) -> Void)?) {
        DispatchQueue.global().async {
            do {
                let data = try NSKeyedArchiver.archivedData(withRootObject: saveObject, requiringSecureCoding: true)
                //FileManager
                
                let file = filePath(fileName: fileName)
                //data.write(to: file)
            } catch {
                print()
            }
            
            
            //            BOOL saved = [data writeToFile:storePath options:NSDataWritingFileProtectionComplete error:&error];
            
            
            //
            //            if callback
            //            {
            //                dispatch_async(dispatch_get_main_queue(), ^{
            //                    callback(saved, error);
            //                    });
            //            }
        }
    }
    
//    private static func triggerSaveCallback(callback: SaveCallback, result: Bool) {
//        if callback == nil {
//            debugPrint("callback null! result: \(result)")
//        }
//    }
//    
//    private static func sendObjectCallback<T>(callback: ObjectCallback<T>, result: T?) {
//        if callback == nil {
//            debugPrint("callback null! result: \(String(describing: result))")
//            return
//        }
//        DispatchQueue.main.async {
//            callback?(result)
//        }
//    }
}
