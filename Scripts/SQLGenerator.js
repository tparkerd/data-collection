

let genSqlLess = (a, b, m) => {
  let n = 1;
  let mltfilter = `between ${a} and ${b - 1}`
  if (b === 1) mltfilter = `< 1`
  else if (a === b) mltfilter = `> ${a - 1}`
  console.log(`select ${n} as id, count(*) from posts `)
  console.log(`INNER JOIN (`)
  let counter = 0
  while (counter < 300) {
    let str = `UNION (select ${++n}, count(*) from posts p where char_length(p.content_text) ${mltfilter} and score between ${(counter + 1)} and ${(counter + 10)})`
    counter += 10
    console.log(str)
  }
  console.log(`UNION (select ${++n}, count(*) from posts p where char_length(p.content_text) ${mltfilter} and score > 300)`);
  console.log(`) AS ${alias[n]} ON ${alias[n]}.id = id`)
  console.log(`p where char_length(p.content_text) ${mltfilter} and score < 1`);
}

let genScore = () => {
  let counter = 0
  while (counter <= 300) {
    console.log(`${counter} < n <= ${(counter + 10)}`)
    counter += 10
  }
}


// genScore()
let gen = (limit, increment) => {
  genSqlLess(1,1)
  let counter = 1
  while (counter < limit) {
    genSqlLess(counter, counter + increment)
    counter += increment
  }
  genSqlLess(counter, counter)
}

gen(400, 50)


let alias = "abcdefghijklmnopqrstuvwxyz".split('')

let counter = 1

counter++
