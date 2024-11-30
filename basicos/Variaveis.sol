
    // Exemplo de contrato em Solidity demonstrando tipos de variáveis com controle de acesso
    pragma solidity ^0.8.0;

    contract Variaveis {
        address private owner; // Endereço do proprietário do contrato

        // Modificador para restringir acesso ao proprietário
        modifier onlyOwner() {
            require(msg.sender == owner, "Acesso negado: somente o proprietário pode executar esta ação.");
            _;
        }

        // Variáveis de estado
        uint256 public inteiro = 42;
        string public texto = "Olá, Solidity!";
        bool public verdadeiro = true;

        constructor() {
            owner = msg.sender; // Define o criador como proprietário
        }

        // Função para alterar o texto, acessível apenas pelo proprietário
        function setTexto(string memory _texto) public onlyOwner {
            texto = _texto;
        }
    }
    