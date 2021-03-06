pragma solidity ^0.4.19;

contract usingConsts {
    uint constant GWEI = 0.001 szabo;

    // this values influence to the reward price! do not change for already registered contracts!
    uint constant TRANSACTION_GAS = 22000;
    // remaining gas - amount of gas to finish transaction after invoke
    uint constant REMAINING_GAS = 30000;
    // joule gas - gas to joule (including proxy and others) invocation, excluding contract gas
    uint constant JOULE_GAS = TRANSACTION_GAS + REMAINING_GAS + 8000;
    // gas required to invoke, but all gas would be returned or not used, so it is rewarded
    uint constant JOULE_INVOKE_GAS = 10000;
    // there is correlation between amount of registered gas and required gas to invoke - 5%
    uint constant JOULE_INVOKE_GAS_PERCENT = 5;

    // minimal default gas price (because of network load)
    uint32 constant DEFAULT_MIN_GAS_PRICE_GWEI = 20;
    // min gas price
    uint constant MIN_GAS_PRICE = GWEI;
    // max gas price
    uint constant MAX_GAS_PRICE = 0xffffffff * GWEI;
    // not, it mist be less then 0x00ffffff, because high bytes might be used for storing flags
    uint constant MAX_GAS = 4000000;
    // Code version
    bytes8 constant VERSION = 0x010800b00507a912;
    //                          ^^ - major
    //                            ^^ - minor
    //                              ^^^^ - build
    //                                  ^^^^^^^^ - git hash
}
