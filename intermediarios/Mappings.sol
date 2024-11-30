
    // Exemplo de contrato em Solidity demonstrando mappings com controle de acesso
    pragma solidity ^0.8.0;

    contract Mappings {
        address private owner;

        // Modificador para restringir acesso ao proprietário
        modifier onlyOwner() {
            require(msg.sender == owner, "Acesso negado: somente o proprietário pode executar esta ação.");
            _;
        }

        // Mapping para armazenar saldos de endereços
        mapping(address => uint256) public saldo;

        constructor() {
            owner = msg.sender; // Define o criador como proprietário
        }

        // Função para adicionar saldo, acessível apenas pelo proprietário
        function adicionarSaldo(address _endereco, uint256 _quantidade) public onlyOwner {
            saldo[_endereco] += _quantidade;
        }
    }
    