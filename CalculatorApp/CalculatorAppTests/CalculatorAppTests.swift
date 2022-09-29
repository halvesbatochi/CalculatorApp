//
//  CalculatorAppTests.swift
//  CalculatorAppTests
//
//  Created by Henrique Alves Batochi on 29/09/22.
//

import XCTest
@testable import CalculatorApp

class CalculatorAppTests: XCTestCase {
    
    // Não tem problema o unwrapped pois na setUp sua inicialização esta garantida
    private var calculator: Calculator!
    
    override func setUp() {
        super.setUp()
        // Todo código colocado no body desta função será executado ANTES de cada teste.
        self.calculator = Calculator()
    }
    
    func test_SubtractTwoNumber() {
        
        let result = calculator.subtract(5,2)
        XCTAssertEqual(result, 3)
    }
    
    func test_AddTwoNumbers() {
        
        let result = calculator.add(2,3)
        XCTAssertEqual(result, 5)
    }

    override class func tearDown() {
        // Todo código colocado no body desta função será executado APÓS cada teste.
        super.tearDown()
    }

}
