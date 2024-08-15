// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Un ejemplo básico de contrato en Solidity
/// @author Tu Nombre
/// @notice Este contrato almacena un número y permite actualizarlo
/// @dev Este es un contrato básico para propósitos educativos
contract MyContract {
    // Variable de estado que almacena un número
    uint256 private number;

    /// @notice Asigna el número inicial al despliegue del contrato
    /// @param _number El número inicial que se desea almacenar
    constructor(uint256 _number) {
        number = _number;
    }

    /// @notice Actualiza el número almacenado
    /// @param _newNumber El nuevo número que se desea almacenar
    function setNumber(uint256 _newNumber) public {
        number = _newNumber;
    }

    /// @notice Obtiene el número almacenado
    /// @return El número actualmente almacenado
    function getNumber() public view returns (uint256) {
        return number;
    }
}
