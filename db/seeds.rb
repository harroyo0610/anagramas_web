  File.foreach("./words") do |row|
    row = row.delete"\n"
    word = row.downcase.split("").sort.join
    Word.create(text: row, canonica: word)
    p word
  end
