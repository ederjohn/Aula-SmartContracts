
// Exemplo de contrato em Solidity demonstrando o uso de arrays
pragma solidity ^0.8.0;

contract Arrays {
    // Array dinâmico de números inteiros
    uint256[] public numeros;

    // Array fixo de strings
    string[3] public palavras = ["Solidity", "Blockchain", "Ethereum"];

    // Função para adicionar um número ao array dinâmico
    function adicionarNumero(uint256 numero) public {
        numeros.push(numero); // Adiciona o número ao final do array
    }

    // Função para atualizar um valor em um índice específico do array dinâmico
    function atualizarNumero(uint256 indice, uint256 novoValor) public {
        require(indice < numeros.length, "Índice fora do limite");
        numeros[indice] = novoValor;
    }

    // Função para remover o último número do array dinâmico
    function removerUltimoNumero() public {
        require(numeros.length > 0, "Array vazio");
        numeros.pop(); // Remove o último elemento
    }

    // Função para obter o tamanho do array dinâmico
    function tamanhoArray() public view returns (uint256) {
        return numeros.length;
    }

    // Função para retornar todos os números do array (não recomendada para grandes arrays)
    function retornarNumeros() public view returns (uint256[] memory) {
        return numeros;
    }
}
