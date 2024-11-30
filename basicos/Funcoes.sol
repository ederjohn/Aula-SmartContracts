
    // Exemplo de contrato em Solidity demonstrando funções com controle de acesso
    pragma solidity ^0.8.0;

    contract Funcoes {
        address private owner;

        modifier onlyOwner() {
            require(msg.sender == owner, "Acesso negado: somente o proprietário pode executar esta ação.");
            _;
        }

        uint256 private dado;

        constructor() {
            owner = msg.sender; // Define o criador como proprietário
        }

        function setDado(uint256 _dado) public onlyOwner {
            dado = _dado;
        }
    }
    