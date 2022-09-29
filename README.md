# CalculatorApp
> Aplicativo para desenvolvimento Swift/iOS

## Resumo - XCTest

Biblioteca do Swift para realizar testes unitários.

### Resumo - Projeto

Aplicativo contendo apenas uma classe - Calculator - com uma função de soma e outra de subtração. Realizado os testes unitários dessas funções para conhecimento do funcionamento da biblioteca XCTest.

### Código da rotina de Teste

```swift
import XCTest
// Importa o target do projeto, contendo todas as classes
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
```
