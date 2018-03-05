const fs = require('fs')

let e = (OldValue) => {
  let OldMin = 0
  let OldMax = 63
  let NewMin = 0
  let NewMax = 3
  OldRange = (OldMax - OldMin)
  if (OldRange == 0)
    return NewMin
  else {
    NewRange = (NewMax - NewMin)
    return Math.ceil((((OldValue - OldMin) * NewRange) / OldRange) + NewMin)
  }
}

let run = () => {
  for (let i = 0; i < 64; i++) {
    console.log(i + "\t" + e(i))
  }
}


// Make a 4-D matrix of all the possible combinations for the counts of each type
// Absent, Mild, Moderate, and Severe
// Annotation = (0)(absent) + (1)(mild) + (2)(moderate) + (3)(severe)
let size = 21

let solve = (a, x, y, z) => {
  return 0*a + 1*x + 2*y + 3*z
}

let annotation = (score, missing) => {
  return score / (63 - (3 * missing))
}


let ws = fs.createWriteStream('test.txt')


for (let i = 0; i <= size; i++) { //absent
  for (let j = 0; j <= size; j++) { // mild
    for (let k = 0; k <= size; k++) { // moderate
      for (let l = 0; l <= size; l++) { // severe
        for (let m = 0; m <= size; m++) { // missing
          if (i + j + k + l + m == 21) {
            ws.write(`${solve(i, j, k, l)}\t${annotation(solve(i, j, k, l), m)}\t${i}\t${j}\t${k}\t${l}\t${m}\n`)
            console.log(`${solve(i, j, k, l)}\t${annotation(solve(i, j, k, l), m)}\t${i}\t${j}\t${k}\t${l}\t${m}`)
          }
        }
      }
    }
  }
}

ws.end()
