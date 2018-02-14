const fs = require('fs')

// Pivot Table Generator
// Rows = number of score ranges
// Cols = number of text length ranges
// Si = score increment
// Ti = text length increment
let pivotTableGen = (rows, cols, si, ti) => {
  cols--
  let alias = "abcdefghijklmnopqrstuvwxyz".split('')
  let o = ''

  // Create row (unions)
  for (let row = 0, r = 1; row < rows; row++, r++) {
    // Row start...
    o += (`\nSELECT ${r} AS id, COUNT(*) AS '1 <= MLT <= ${ti}'`)
    for (let col = 0; col < cols; col++)
      o += (`, ${alias[col]}.countOf AS '${((col + 1) * ti) + 1} <= MLT <= ${(col + 2) * ti}'`)
    // Remaining samples
    // o += `, ${alias[cols]} AS '${rows * si} < MLT'`
    o += (`\nFROM posts p`);

      // Create columns (inner joined tables)
      for (let col = 0; col < cols; col++) {
        // Start columns
        o += (`\nINNER JOIN (
  SELECT ${r} AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN ${((col + 1) * ti) + 1} AND ${(col + 2) * ti}
    AND
    p.score BETWEEN ${(row) * si + 1} AND ${(row + 1) * si}
  ) AS ${alias[col]} ON ${alias[col]}.tmpid = ${r}`)
      }

        o += (`\nWHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and ${ti}
  AND
  p.score BETWEEN ${(row) * si + 1} AND ${(row + 1) * si}`)

      // If we haven't reached the last row yet, add a UNION
      if (row <= rows)
        o += (`\nUNION`)

  }

  o += (`\nSELECT ${rows + 1} AS id, COUNT(*) AS '1 <= MLT <= ${ti}'`)
  for (let col = 0; col < cols; col++)
    o += (`, ${alias[col]}.countOf AS 'MLT < ${cols * ti}'`)
  // Remaining samples
  // o += `, ${alias[cols]} AS '${rows * si} < MLT'`
  o += (`\nFROM posts p`);

    // Create columns (inner joined tables)
    for (let col = 0; col < cols; col++) {
      // Start columns
      o += (`\nINNER JOIN (
SELECT ${rows} AS tmpid,
COUNT(*) AS countOf
FROM posts p
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN ${((col + 1) * ti) + 1} AND ${(col + 2) * ti}
  AND
  p.score > ${rows * si}
) AS ${alias[col]} ON ${alias[col]}.tmpid = ${rows}`)
    }

      o += (`\nWHERE
CHAR_LENGTH(p.content_text) BETWEEN 1 and ${ti}
AND
p.score  > ${rows * si}`)


o += `\nINTO OUTFILE '/var/lib/mysql-files/testout.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\\n';`

    fs.writeFile('out.sql', o, (err) => {
      if (err)
        return console.log(err)
      else
        console.log('File was saved.')
    })
}

// Rows, Columns (Scores increment, Text Length Increments)
pivotTableGen(40, 20, 10, 50)
