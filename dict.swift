#!/usr/bin/swift
// you can compile into binary by `swiftc dict.swift`

import Foundation

if (CommandLine.argc < 2) {
    print("Usage: dictionary word")
}else{
    let argument = CommandLine.arguments[1]
    let result = DCSCopyTextDefinition(nil, argument as CFString, CFRangeMake(0, argument.count))?.takeRetainedValue() as String?
    print(result ?? "")
}
