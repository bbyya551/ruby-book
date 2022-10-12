# text = <<-TEXT
# 名前：伊藤淳一
# 電話：03(1234)5678
# ？？：9999-99-9999
# ？？：03(1234-5678
# 住所：兵庫県西脇市板波町1-2-3
# TEXT
# numbers = text.scan(/0[1-9]\d{0,3}[-(]\d{1,4}[-)]\d{4}/)
# #1文字目は0, 2文字目は0以外の数字, 3文字目は0から3桁の数字
# # => ["03(1234)5678", "03(1234-5678"]
# numbers.grep(/\(\d+\)|-\d+-/)
# # => ["03(1234)5678"]

# text = <<-TEXT
# クープバゲットのパンは美味しかった。
# 今日はクープ バゲットさんに行きました。
# クープ　バゲットのパンは最高。
# ジャムおじさんのパン、ジャムが入ってた。
# また行きたいです。クープ・バゲット。
# クープ・バケットのパン、売り切れだった（><）
# TEXT

# text.split(/\n/).grep(/クープ.?バ[ゲケ]ット/)

html = <<-HTML
<select name="game_console">
<option value="none"></option>
<option value="wii_u" selected>Wii U</option>
<option value="ps4">プレステ4</option>
<option value="gb">ゲームボーイ</option>
</select>
HTML

replaced = html.gsub(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/, '\1,\2')

puts replaced