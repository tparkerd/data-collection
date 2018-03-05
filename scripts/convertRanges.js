let convert = (OldValue) => {
  let OldMin = -0.5
  let OldMax = -1.0
  let NewMin = 0
  let NewMax = 3


  OldRange = (OldMax - OldMin)
  if (OldRange == 0)
   return NewMin
  else
  {
    NewRange = (NewMax - NewMin)
    return Math.round((((OldValue - OldMin) * NewRange) / OldRange) + NewMin)
  }
}


// Converts the compound value for negative sentiments to the percentage that it
// would have if a Beck's Inventory value

let convertPercentage = (OldValue) => {
  let OldMin = 0
  let OldMax = 100
  let NewMin = -0.5
  let NewMax = -1.0


  OldRange = (OldMax - OldMin)
  if (OldRange == 0)
   return NewMin
  else
  {
    NewRange = (NewMax - NewMin)
    return ((((OldValue - OldMin) * NewRange) / OldRange) + NewMin)
  }
}

//
// for (let i = -0.5; i > -1.0; i -= 0.05) {
//   console.log(`${i} -> ${convert(i)}`)
// }


for (let i = 0; i <= 100; i++) {
  console.log(`${i} -> ${convertPercentage(i)}`)
}
