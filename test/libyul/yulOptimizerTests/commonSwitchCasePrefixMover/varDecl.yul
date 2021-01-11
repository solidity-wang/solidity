{
  switch calldataload(0)
  case 0 {
    sstore(0, 23)
    let a := calldataload(42)
    sstore(1, a)
    sstore(2, sub(a, 2))
  }
  default {
    sstore(0, 23)
    let b := calldataload(42)
    sstore(1, b)
    sstore(2, sub(b, 1))
  }
}
// ----
// step: commonSwitchCasePrefixMover
//
// {
//     sstore(0, 23)
//     let a := calldataload(42)
//     sstore(1, a)
//     switch calldataload(0)
//     case 0 { sstore(2, sub(a, 2)) }
//     default { sstore(2, sub(a, 1)) }
// }
