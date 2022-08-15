import bigints

const 
    a = initBigInt("536535435434576565467545783478534765459")
    b = initBigInt(13532451)
    c = initBigInt(1)
    d = initBigInt("5365354354345765654675457834785347654")

proc main() =
    let aBytesBE = toBytesBE(a)
    doAssert aBytesBE == @[0'u8, 0, 0, 1, 147, 164, 247, 84, 123, 42, 121, 70, 74, 125, 224, 249, 156, 227, 123, 147]
    doAssert $fromBytesBE(aBytesBE) == "536535435434576565467545783478534765459"


    let aBytesLE = toBytesLE(a)
    doAssert aBytesLE == @[147'u8, 123, 227, 156, 249, 224, 125, 74, 70, 121, 42, 123, 84, 247, 164, 147, 1, 0, 0, 0]
    doAssert $fromBytesLE(aBytesLE) == "536535435434576565467545783478534765459"
    
    let bBytesBE = toBytesBE(b)
    doAssert bBytesBE == @[0'u8, 206, 125, 35]
    doAssert $fromBytesBE(bBytesBE) == "13532451"

    let bBytesLE = toBytesLE(b)
    doAssert bBytesLE == @[35'u8, 125, 206, 0]
    doAssert $fromBytesLE(bBytesLE) == "13532451"

    let cBytesBE = toBytesBE(c)
    doAssert cBytesBE == @[0'u8, 0, 0, 1]
    doAssert $fromBytesBE(cBytesBE) == "1"

    let cBytesLE = toBytesLE(c)
    doAssert cBytesLE == @[1'u8, 0, 0, 0]
    doAssert $fromBytesLE(cBytesLE) == "1"

    let dBytesBE = toBytesBE(d)
    doAssert dBytesBE == @[4'u8, 9, 84, 100, 175, 79, 200, 228, 138, 252, 35, 135, 157, 186, 152, 70]
    doAssert $fromBytesBE(dBytesBE) == "5365354354345765654675457834785347654"

    let dBytesLE = toBytesLE(d)
    doAssert dBytesLE == @[70'u8, 152, 186, 157, 135, 35, 252, 138, 228, 200, 79, 175, 100, 84, 9, 4]
    doAssert $fromBytesLE(dBytesLE) == "5365354354345765654675457834785347654"

main()
