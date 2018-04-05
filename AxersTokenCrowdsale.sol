pragma solidity 0.4.19;

import "./AxersToken.sol";
import "./crowdsale/emission/MintedCrowdsale.sol";
import "./crowdsale/price/IncreasingPriceCrowdsale.sol";

contract AxersTokenCrowdsale is IncreasingPriceCrowdsale, MintedCrowdsale {
  function AxersTokenCrowdsale
        (
            uint256 _initialRate,
            uint256 _finalRate,
            uint256 _openingTime,
            uint256 _closingTime,
            uint256 _rate,
            address _wallet,
            MintableToken _token
        )
        public
        Crowdsale(_rate, _wallet, _token)
        TimedCrowdsale(_openingTime, _closingTime)
        IncreasingPriceCrowdsale(_initialRate, _finalRate) {
        }
}
