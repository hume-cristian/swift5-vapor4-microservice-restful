//
//  UserModel.swift
//
//  Author   Cristian Hume Henriquez
//  Version  1.0.0
//  Created  2022-11-28
//  Modified 2022-11-28
//

import Foundation
import Vapor

struct UserModel: Content {
    
    let id: Int
    let firstName: String
    let lastName: String
    let nationality: String
    let email: String
    let phone: String
    let occupation: String
    
}
