{
  switch calldataload(0)
  case 0 {
    sstore(0, 1)
    sstore(1, 2)
    sstore(2, 3)
  }
  default {
    sstore(0, 1)
    sstore(1, 2)
    sstore(2, 4)
  }
}
// ----
// step: commonSwitchCasePrefixMover
//
// {
//     sstore(0, 1)
//     sstore(1, 2)
//     switch calldataload(0)
//     case 0 { sstore(2, 3) }
//     default { sstore(2, 4) }
// }
