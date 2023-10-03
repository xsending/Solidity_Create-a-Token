# Solidity_Create-a-Token
This Solidity program demonstrates the simplified process of minting and burning "tokens". The purpose of this program is to show in a very simple manner and provide a basic understanding of how tokens are minted and burned in the blockchain, as well as show how structs, functions, various datatypes, etc. performs when applied to an actual program.

## Description
This program is a simple process demonstration of token minting and burning. It is written in Solidity, and mainly contains 2 functions, namely the mint and burn functions. It also includes a struct and a mapping variable that will be used to store the self-defined token and its details, as well as the sender addresses and their balances. This program serves as a basic introduction to the minting and burning process of the tokens that circulate within the blockchain.  

## Getting started
### Executing program
To run this code, the Remix IDE is a solid option (https://remix.ethereum.org/).
First, create a new file, and simply copy this code and compile it on the "Solidity Compiler" tab.
```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    struct Token{
        string tkn_name;
        string tkn_abbrev;
        uint t_supply;
    }
    
    Token public eth = Token("Ethereum", "ETH", 0);

    // mapping variable here
    mapping (address => uint) public balances;

    // mint function
    function mint(address addr, uint val) external{
        eth.t_supply += val;
        balances[addr] += val;
    }

    // burn function
    function burn(address addr, uint val) external{
        if (val <= balances[addr]){
            eth.t_supply -= val;
            balances[addr] -= val;
        }
    }
}
```
Proceed to the "Deploy & Run Transactions" tab and click "deploy" to run the code. Provide a Solidity address and a value for the functions found in the program in order to execute it, and see how it affects the values stored in the "balances" variable and the "eth" object. Continue to experiment with different values and see how the program works with various inputs.

##Authors
Abel Gomez

## License
This project is licensed under the MIT License - see the LICENSE.md file for details
