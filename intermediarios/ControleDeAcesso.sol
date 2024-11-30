
// Exemplo de contrato em Solidity explicando controle de acesso
pragma solidity ^0.8.0;

contract ControleDeAcesso {
    address private owner; // Proprietário do contrato
    mapping(address => bool) private admins; // Lista de administradores

    // Modificador para restringir funções ao proprietário
    modifier onlyOwner() {
        require(msg.sender == owner, "Acesso negado: somente o proprietário pode executar esta ação.");
        _;
    }

    // Modificador para restringir funções aos administradores
    modifier onlyAdmin() {
        require(admins[msg.sender], "Acesso negado: somente administradores podem executar esta ação.");
        _;
    }

    constructor() {
        owner = msg.sender; // Define o criador como proprietário
        admins[msg.sender] = true; // O proprietário também é um administrador
    }

    // Função para adicionar um novo administrador (somente proprietário)
    function adicionarAdmin(address _admin) public onlyOwner {
        admins[_admin] = true;
    }

    // Função para remover um administrador (somente proprietário)
    function removerAdmin(address _admin) public onlyOwner {
        admins[_admin] = false;
    }

    // Função restrita a administradores
    function acaoAdmin() public onlyAdmin {
        // Código específico para administradores
    }

    // Função aberta a todos
    function acaoPublica() public {
        // Código acessível a qualquer usuário
    }
}
