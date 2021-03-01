//
//  ExampleApp.swift
//  Example
//
//  Created by 안창범 on 2021/02/26.
//

import SwiftUI
import Open3DSupport
import NumPySupport
import PythonSupport

@main
struct ExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    init() {
        PythonSupport.initialize()
        Open3DSupport.sitePackagesURL.insertPythonPath()
        NumPySupport.sitePackagesURL.insertPythonPath()
        

    }
}
