//
//  main.swift
//
//  Author   Cristian Hume Henriquez
//  Version  1.0.0
//  Created  2022-11-28
//  Modified 2022-11-28
//

import App
import Vapor

var env = try Environment.detect()
try LoggingSystem.bootstrap(from: &env)
let app = Application(env)
defer { app.shutdown() }
try configure(app)
try app.run()
