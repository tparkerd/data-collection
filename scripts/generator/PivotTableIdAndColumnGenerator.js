let score_group = (n) => {
  for (let i = 0; i < n; i++) {
    console.log(`WHEN p.score BETWEEN ${i * 10 + 1} AND ${(i + 1) * 10} THEN 'Group ${i + 1}: ${i * 10 + 1} - ${(i + 1) * 10}'`)
  }
}
let length_group = (n) => {
  for (let i = 0; i < n; i++) {
    console.log(`WHEN CHAR_LENGTH(p.content_text) BETWEEN ${i * 50 + 1} AND ${(i + 1) * 50} THEN 'Group ${i + 1}: ${i * 50 + 1} - ${(i + 1) * 50}'`)
  }
}


// score_group(33)
length_group(20)
