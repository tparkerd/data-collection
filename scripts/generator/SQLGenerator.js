const fs = require('fs')

// Pivot Table Generator
let pivotTableGen = (rows, cols) => {
  let alias = "abcdefghijklmnopqrstuvwxyz".split('')
  let o = ''

  // Create row (unions)
  for (let row = 0, r = 1; row < rows; row++, r++) {
    // Row start...
    o += (`\nSELECT ${r} AS id, COUNT(*) AS 'MTL < 1'`)
    for (let col = 1; col < cols; col++)
      o += (`, ${alias[col]}.countOf`)
    o += (`\nFROM posts p`);

      // Create columns (inner joined tables)
      for (let col = 1; col < cols; col++) {
        // Start columns
        o += (`\nINNER JOIN (
  SELECT ${r} AS tmpid,
  COUNT(*) AS countOf
  FROM posts p`)

          if (col === 0) {
            o += (`
  WHERE
    CHAR_LENGTH(p.content_text) < 1
    AND
    p.score BETWEEN ${10 * row + 1} AND ${10 * (row + 1)}`)
          }
          else {
            o += (`
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN ${((col - 1) * 50) + 1} AND ${(col) * 50}
    AND
    p.score BETWEEN ${(row) * 10 + 1} AND ${(row + 1) * 10}`)
          }

        o += (`\n) AS ${alias[col]} ON ${alias[col]}.tmpid = ${r}`)
      }

      if (row === 0)
        o += (`\nWHERE
  CHAR_LENGTH(p.content_text) < 1
  AND
  p.score < 1`)
      else {
        o += (`\nWHERE
  CHAR_LENGTH(p.content_text) < 1
  AND
  p.score BETWEEN ${(row - 1) * 10 + 1} AND ${row * 10}`)
      }
      // If we haven't reached the last row yet, add a UNION
      if (r < rows)
      o += (`\nUNION`)
    }

    fs.writeFile('out.sql', o, (err) => {
      if (err)
        return console.log(err)
      else
        console.log('File was saved.')
    })
}

// Rows, Columns (Scores, Text Length Increments)
pivotTableGen(3, 2)
