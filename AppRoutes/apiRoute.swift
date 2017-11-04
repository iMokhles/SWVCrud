//
//  apiRoute.swift
//  SWVCrudPackageDescription
//
//  Created by iMokhles on 04/11/2017.
//

import Vapor

final class apiRoute: RouteCollection {
    
    let apiVersion = "v1"
    var apiBasePath: String
    var jsonObject = JSON()
    
    init() {
       apiBasePath = String(format: "api/%@/", apiVersion)
    }
    
    func build(_ builder: RouteBuilder) throws {
        
        builder.get(routeWithPath(path: "hello")) { req in

            return self.sendJsonResponse(output: [
                "name": "iMokhles"
                ]) as ResponseRepresentable;
        }
    }
    
    func routeWithPath(path: String) -> String {
        return apiBasePath+path
    }
    
    func sendJsonResponse(output: Any) -> JSON {
        try! jsonObject.set("result ", output)
        return jsonObject
    }
}

