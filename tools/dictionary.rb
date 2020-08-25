require 'erb'
require 'csv'

ROMAJI = {
"っ": 'ltsu',
"ぁ": 'la',
"ぃ": 'li',
"ぅ": 'lu',
"ぇ": 'le',
"ぉ": 'lo',
"ゃ": 'lya',
"ゅ": 'lyu',
"ょ": 'lyo',
"ヵ": 'lka',
"ヶ": 'lke',
"ゎ": 'lwa',
"ゔ": 'vu',
"か": 'ka',
"き": 'ki',
"く": 'ku',
"け": 'ke',
"こ": 'ko',
"が": 'ga',
"ぎ": 'gi',
"ぐ": 'gu',
"げ": 'ge',
"ご": 'go',
"さ": 'sa',
"し": 'si',
"す": 'su',
"せ": 'se',
"そ": 'so',
"ざ": 'za',
"じ": 'zi',
"ず": 'zu',
"ぜ": 'ze',
"ぞ": 'zo',
"せﾟ": 'ce',
"た": 'ta',
"ち": 'ti',
"つ": 'tu',
"て": 'te',
"と": 'to',
"だ": 'da',
"ぢ": 'di',
"づ": 'du',
"で": 'de',
"ど": 'do',
"な": 'na',
"に": 'ni',
"ぬ": 'nu',
"ね": 'ne',
"の": 'no',
"は": 'ha',
"ひ": 'hi',
"ふ": 'hu',
"へ": 'he',
"ほ": 'ho',
"ば": 'ba',
"び": 'bi',
"ぶ": 'bu',
"べ": 'be',
"ぼ": 'bo',
"ぱ": 'pa',
"ぴ": 'pi',
"ぷ": 'pu',
"ぺ": 'pe',
"ぽ": 'po',
"ま": 'ma',
"み": 'mi',
"む": 'mu',
"め": 'me',
"も": 'mo',
"や": 'ya',
"ゆ": 'yu',
"よ": 'yo',
"ら": 'ra',
"り": 'ri',
"る": 'ru',
"れ": 're',
"ろ": 'ro',
"わ": 'wa',
"を": 'wo',
"ん": 'n',
"あ": 'a',
"い": 'i',
"う": 'u',
"え": 'e',
"お": 'o',
"ー": 'long',
'ゐ': 'u li',
'ゑ': 'u le',
}

renderer = ERB.new(File.read('templates/dictionary.erb'))

result = ''

(0..9).each do |num|
    file = "data/dictionary0#{num}.txt"
    csv = CSV.read(file, col_sep:"\t", headers: false)
    csv.each do |row|
        pro = row[0].split('').map do |c|
            next if ROMAJI[c.to_sym].nil? # and c =~ /[a-zA-Z0-9・ゞ!$&\(\)\*\+\-\*\\\,\.\/:;<>\?=]/
            # raise "#{row[0]} #{row[4]} #{c}" if ROMAJI[c.to_sym].nil?
            ROMAJI[c.to_sym]
        end
        pro_text = pro.compact.join(' ')
        result << "#{row[4]}\t#{pro_text}\n" unless pro_text.empty?
    end
end

puts output = renderer.result()
