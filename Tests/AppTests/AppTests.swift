//
//  AppTests.swift
//
//  Author   Cristian Hume Henriquez
//  Version  1.0.0
//  Created  2022-11-28
//  Modified 2022-11-28
//

@testable import App
import XCTVapor

final class AppTests: XCTestCase {
    func testHelloWorld() throws {
        let app = Application(.testing)
        defer { app.shutdown() }
        try configure(app)

        try app.test(.GET, "hello", afterResponse: { res in
            XCTAssertEqual(res.status, .ok)
            XCTAssertEqual(res.body.string, "Hello, world!")
        })
    }
}
