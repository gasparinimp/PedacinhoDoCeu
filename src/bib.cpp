float calcularJuros(float valor, float taxa) {
    return valor + (valor * taxa);
}

float aplicarDesconto(float valor, float porcentagem) {
    return valor - (valor * porcentagem);
}