// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MetaToken is ERC721, ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("MetaToken", "MTA") {}

    string[] uri = [
        "https://gateway.pinata.cloud/ipfs/QmRNEPmvZx8tTuUKzuoCpRxq5Mk2YTKMxBUBzXN6XFJJca",
        "https://gateway.pinata.cloud/ipfs/QmajP114N4xr3JyrbvC8EqUuJ9UxZ3Kmp3XKHm5XmPGEuS",
        "https://gateway.pinata.cloud/ipfs/QmTj7RRkTwn3ng38rsaChMDE4ZCKmGpADNz4d1d3aqQ6u5",
        "https://gateway.pinata.cloud/ipfs/QmU8LmfMnpYPEiU2zocSiem8iB1hZ9UqdquPj7jwBUBySH",
        "https://gateway.pinata.cloud/ipfs/QmS3DoGaeBoix3M1EZ6YnLVX1E5jYwqLTKjLQFNKXBRGi4"
    ];

    string[] prompt = [    
        "DAD and SON dog being ready for the war",
        "Being Inspired for the leader and feeling the sense of pride",
        "Looking for the better future",
        "The two soilders who made the country proud",
        "The new generations of young soilders"
    ];

    function safeMint(address to) public onlyOwner returns(uint256 ){
                _tokenIds.increment();

        uint256 tokenId = _tokenIds.current();
 
            _safeMint(to, tokenId);
            _setTokenURI(tokenId, uri[0]); 
            return tokenId;
    }

    // The following functions are overrides required by Solidity.

    function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage) {
        super._burn(tokenId);
    }

    function promptDescription(uint256 tokenID) external view returns (string memory) {
        return prompt[tokenID];
    }

    function tokenURI(uint256 tokenId) public view override(ERC721, ERC721URIStorage) returns (string memory) {
        return super.tokenURI(tokenId);
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC721, ERC721URIStorage) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

}