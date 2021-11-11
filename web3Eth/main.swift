//
//  main.swift
//  web3Eth
//
//  Created by Majdi on 11/11/2021.
//

import Foundation
import web3swift
 
print("Hello, World!")
let web3 = Web3.InfuraRopstenWeb3()
let address = EthereumAddress("0x5255b10F99b80BA0489Ca0deD61b66502ed10608")!
let balance = try web3.eth.getBalance(address: address)
let balanceString = Web3.Utils.formatToEthereumUnits(balance, toUnits: .eth, decimals: 3)

print(balance)
