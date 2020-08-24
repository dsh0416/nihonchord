require 'csv'
require 'yaml'

(0..9).each do |num|
    file = "data/dictionary0#{num}.txt"
    csv = CSV.read(file, col_sep:"\t", headers: false)
    csv.each do |row|
        puts "#{row[0]}, #{row[4]}"
    end
end
