{
  switch calldataload(0)
  case 0 {
    for { let a := 0 } lt(a, 42) { a := add(a, 1) } {
      let b := 23
      sstore(add(b, a), a)
    }
    sstore(0, 23)
  }
  default {
    for { let b := 0 } lt(b, 42) { b := add(b, 1) } {
      let c := 23
      sstore(add(c, b), b)
    }
    sstore(0, 32)
  }
}
// ----
// step: commonSwitchCasePrefixMover
//
// {
//     for { let a := 0 } lt(a, 42) { a := add(a, 1) }
//     {
//         let b := 23
//         sstore(add(b, a), a)
//     }
//     switch calldataload(0)
//     case 0 { sstore(0, 23) }
//     default { sstore(0, 32) }
// }
