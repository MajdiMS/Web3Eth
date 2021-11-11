//
//  main.swift
//  web3Eth
//
//  Created by Majdi on 11/11/2021.
//

import Foundation
import web3swift
etherium()
//print("Hello, World!")
//let web3 = Web3.InfuraRopstenWeb3()
//let address = EthereumAddress("0x5255b10F99b80BA0489Ca0deD61b66502ed10608")!
//let balance = try web3.eth.getBalance(address: address)
//let balanceString = Web3.Utils.formatToEthereumUnits(balance, toUnits: .eth, decimals: 3)
//
//print(balance)
func etherium(){
    do {
        let senderEthAddress = EthereumAddress("0x5255b10F99b80BA0489Ca0deD61b66502ed10608")
        let web3 = Web3.InfuraRopstenWeb3()
        let value: String = "1.0" // In Ether
        let walletAddress = EthereumAddress("0x5255b10F99b80BA0489Ca0deD61b66502ed10608")! // Your wallet address
        let toAddress = EthereumAddress("0x98DD6993E0e13a3F16fACfFf929D19106F999A14")!
        let contract = web3.contract(Web3.Utils.coldWalletABI, at: toAddress, abiVersion: 2)!
        let amount = Web3.Utils.parseToBigUInt(value, units: .eth)
        var options = TransactionOptions.defaultOptions
        options.value = amount
        options.from = walletAddress
        options.gasPrice = .automatic
        options.gasLimit = .automatic
        let nonce = try web3.eth.getTransactionCount(address: senderEthAddress!) //Get nonce or transaction count
        let transaction = contract.write(
        "fallback",
        parameters: [AnyObject](),
        extraData: Data(),
        transactionOptions: options)!
        let getGasPrice = try! web3.eth.getGasPrice()
        print("nonce=\(nonce)")
        print("getGasPrice=\(getGasPrice)")
        //let result = web3.browserFunctions.signTransaction(transaction)
        //web3.browserFunctions.si
         
    } catch    {
        print("error")
    }
