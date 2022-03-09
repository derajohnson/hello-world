//SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract HelloWorld {

    string private favouriteLanguage;

    constructor(string memory _language){
        console.log("My favourite language is: ", _language);
        favouriteLanguage = _language;
    }

    function getFavouriteLanguage() public view returns (string memory){
        console.log("Getting favourite langauge");
        return favouriteLanguage;
    }

    function changeFavouriteLanguage(string memory _language) public {
        console.log("Changing favourite langauge from '%s' to '%s'", favouriteLanguage, _language);
        favouriteLanguage = _language;
    }

}