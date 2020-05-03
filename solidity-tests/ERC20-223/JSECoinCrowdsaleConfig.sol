pragma solidity ^0.4.23;

contract JSECoinCrowdsaleConfig {
    
    uint8 public constant   TOKEN_DECIMALS = 18;
    uint256 public constant DECIMALSFACTOR = 10**uint256(TOKEN_DECIMALS);

    uint256 public constant DURATION                                = 12 weeks; 
    uint256 public constant CONTRIBUTION_MIN                        = 0.1 ether; // Around $64
    uint256 public constant CONTRIBUTION_MAX_NO_WHITELIST           = 20 ether; // $9,000
    uint256 public constant CONTRIBUTION_MAX                        = 10000.0 ether; //After Whitelisting
    
    uint256 public constant TOKENS_MAX                              = 10000000000 * (10 ** uint256(TOKEN_DECIMALS)); //10,000,000,000 aka 10 billion
    uint256 public constant TOKENS_SALE                             = 5000000000 * DECIMALSFACTOR; //50%
    uint256 public constant TOKENS_DISTRIBUTED                      = 5000000000 * DECIMALSFACTOR; //50%


    // For the public sale, tokens are priced at 0.006 USD/token.
    // So if we have 450 USD/ETH -> 450,000 USD/KETH / 0.006 USD/token = ~75000000
                                                                    //    3600000
    uint256 public constant TOKENS_PER_KETHER                       = 75000000;

    // Constant used by buyTokens as part of the cost <-> tokens conversion.
    // 18 for ETH -> WEI, TOKEN_DECIMALS (18 for JSE Coin Token), 3 for the K in tokensPerKEther.
    uint256 public constant PURCHASE_DIVIDER                        = 10**(uint256(18) - TOKEN_DECIMALS + 3);

}