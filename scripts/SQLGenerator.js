// Pivot Table Generator
let pivotTableGen = (rows, cols) => {
  let alias = "abcdefghijklmnopqrstuvwxyz".split('')

  // Create row (unions)
  for (let row = 1; row <= rows; row++) {
    // Row start...
    console.log(`SELECT ${row} AS id, COUNT(*) AS countOf`)
    for (let col = 0; col < cols; col++)
      console.log(`, ${alias[col]}.countOf`)
    console.log(`FROM posts p`);

      // Create columns (inner joined tables)
      for (let col = 0; col < cols; col++) {
        // Start columns
        console.log(`INNER JOIN (
          SELECT ${row} AS tmpid,
          COUNT(*) AS countOf
          FROM posts p
          WHERE CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
          AND p.score < 1
        ) AS ${alias[col]} ON ${alias[col]}.tmpid = ${row}`)
      }
      console.log(`WHERE CHAR_LENGTH(p.content_text) < 1
      AND p.score < 1`)
      // If we haven't reached the last row yet, add a UNION
      if (row < rows)
      console.log(`UNION`)
    }
}


pivotTableGen(4, 3)
