
    // Exemplo de contrato em Solidity demonstrando visibilidade e controle de acesso
    pragma solidity ^0.8.0;

    contract Visibilidade {
        address private owner;

        modifier onlyOwner() {
            require(msg.sender == owner, "Acesso negado: somente o proprietário pode executar esta ação.");
            _;
        }

        uint256 private privado = 10;

        constructor() {
            owner = msg.sender; // Define o criador como proprietário
        }

        // Somente o proprietário pode alterar a variável privada
        function setPrivado(uint256 _valor) public onlyOwner {
            privado = _valor;
        }
    }
    