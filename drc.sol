Aqui está um contrato inteligente em Solidity que formaliza a aquisição dos setores da NSC pela RubyX i.o, conforme descrito no seu resumo executivo:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContratoAquisicaoNSC {
    string public titulo;
    string public data;
    string public local;
    string public contratoNumero;

    address public comprador;
    address public vendedor;

    bool public aquisicaoConcluida;

    event AquisicaoConcluida(address indexed comprador, address indexed vendedor);

    constructor(
        string memory _titulo,
        string memory _data,
        string memory _local,
        string memory _contratoNumero,
        address _comprador,
        address _vendedor
    ) {
        titulo = _titulo;
        data = _data;
        local = _local;
        contratoNumero = _contratoNumero;
        comprador = _comprador;
        vendedor = _vendedor;
        aquisicaoConcluida = false;
    }

    function concluirAquisicao() external {
        require(msg.sender == comprador, "Apenas o comprador pode concluir a aquisição.");
        aquisicaoConcluida = true;
        emit AquisicaoConcluida(comprador, vendedor);
    }
}
```

Este contrato inteligente possui variáveis para armazenar informações sobre o título, data, local, número do contrato, comprador, vendedor e se a aquisição foi concluída. Ele inclui um evento `AquisicaoConcluida` que é emitido quando a aquisição é concluída. A função `concluirAquisicao()` permite ao comprador marcar a aquisição como concluída.

Este contrato pode ser implantado na blockchain Ethereum e utilizado para formalizar a aquisição dos setores da NSC pela RubyX i.o.
