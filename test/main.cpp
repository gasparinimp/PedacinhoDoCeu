#include <iostream>
#include <cassert>
#include "bib.hpp"

int main() {
    // Teste: mensalidade 100 + 10% juros = 110
    assert(calcularJuros(100, 0.10) == 110); 
    
    std::cout << "✅ Teste calcularJuros: PASSOU!" << std::endl;
    return 0;
}
