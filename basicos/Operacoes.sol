
    // Exemplo de contrato em Solidity demonstrando operações com controle de acesso
    pragma solidity ^0.8.0;

    contract Operacoes {
        address private owner;

        modifier onlyOwner() {
            require(msg.sender == owner, "Acesso negado: somente o proprietário pode executar esta ação.");
            _;
        }

        uint256 public resultado;

        constructor() {
            owner = msg.sender; // Define o criador como proprietário
        }

        // Somente o proprietário pode realizar operações
        function somar(uint256 a, uint256 b) public onlyOwner {
            resultado = a + b;
        }
    }
    