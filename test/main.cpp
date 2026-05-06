#include <iostream>
#include <cassert>
#include "bib.hpp"

int main() {
    // Teste: mensalidade 100 + 10% juros = 110
    assert(calcularJuros(100, 0.10) == 110); 
    
    assert(aplicarDesconto(100, 0.05) == 95); 
    
    std::cout << "✅ Todos os testes (Juros e Desconto): PASSARAM!" << std::endl;
    return 0;
}
