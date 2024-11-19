//
//  routes.swift
//
//  Author   Cristian Hume Henriquez
//  Version  1.0.0
//  Created  2022-11-28
//  Modified 2022-11-28
//

import Vapor

func routes(_ app: Application) throws {
    
    let userController =  UserController()

    try app.register(collection: userController)
    
}
