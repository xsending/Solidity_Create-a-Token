// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

/* first address used: 0x71C7656EC7ab88b098defB751B7401B5f6d8976F
   second address used: 0xC66d07097f4823343bf116463070B3be5e941C4E
*/

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
