//
//  UserController.swift
//  
//  Author   Cristian Hume Henriquez
//  Version  1.0.0
//  Created  2022-11-28
//  Modified 2022-11-28
//

import Foundation
import Vapor

struct UserController: RouteCollection {
    
    func boot(routes: RoutesBuilder) throws {
           let userRoutes = routes.grouped("users")
        userRoutes.get(use: findAll)
    }
    
    func findAll(req: Request) throws -> Response {

        let userModelList = [
            [
                "id": 1,
                "firstName": "Bjarne",
                "lastName": "Stroustrup",
                "nationality": "Danish",
                "occupation": "Computer Scientist",
                "KnownFor": "C++ (Programming Language)"
            ],
            [
                "id": 2,
                "firstName": "James",
                "lastName": "Gosling",
                "nationality": "Canadian",
                "occupation": "Computer Scientist",
                "KnownFor": "Java (Programming Language)"
            ],
            [
                "id": 3,
                "firstName": "Guido",
                "lastName": "Van Rossum",
                "nationality": "Netherlands",
                "occupation": "Benevolent Dictator for Life",
                "KnownFor": "Python (Programming Language)"
            ],
            [
                "id": 4,
                "firstName": "Anders",
                "lastName": "Hejlsberg",
                "nationality": "Danish",
                "occupation": "Lead Systems Architect",
                "KnownFor": "CSharp (Programming Language)"
            ],
            [
                "id": 5,
                "firstName": "Yukihiro",
                "lastName": "Matsumoto",
                "nationality": "Japanese",
                "occupation": "Computer Scientist",
                "KnownFor": "Ruby (Programming Language)"
            ],
            [
                "id": 6,
                "firstName": "Cristian",
                "lastName": "Hume",
                "nationality": "Chilean",
                "occupation": "Senior Software Developer",
                "KnownFor": "Swift (Programming Language)"
            ]
        ]
        
        let data = try JSONSerialization.data(withJSONObject: userModelList)
        
        return Response(status: .ok, body: Response.Body(data: data))
        
    }
    
}

