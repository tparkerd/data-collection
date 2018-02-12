const fs = require('fs')

// Pivot Table Generator
let pivotTableGen = (rows, cols) => {
  cols--
  let alias = "abcdefghijklmnopqrstuvwxyz".split('')
  let o = ''

  // Create row (unions)
  for (let row = 0, r = 1; row < rows; row++, r++) {
    // Row start...
    o += (`\nSELECT ${r} AS id, COUNT(*) AS 'MTL < 1'`)
    for (let col = 0; col < cols; col++)
      o += (`, ${alias[col]}.countOf`)
    o += (`\nFROM posts p`);

      // Create columns (inner joined tables)
      for (let col = 0; col < cols; col++) {
        // Start columns
        o += (`\nINNER JOIN (
  SELECT ${r} AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN ${((col) * 50) + 1} AND ${(col + 1) * 50}
    AND
    p.score BETWEEN ${(row) * 10 + 1} AND ${(row + 1) * 10}
  ) AS ${alias[col]} ON ${alias[col]}.tmpid = ${r}`)
      }

        o += (`\nWHERE
  CHAR_LENGTH(p.content_text) BETWEEN ${(row * 50 + 1)} AND ${(row + 1) * 50}
  AND
  p.score BETWEEN ${(row) * 10 + 1} AND ${(row + 1) * 10}`)

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
pivotTableGen(30, 10)
