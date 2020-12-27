params = {トマト: 100, きゅうり: 200, 玉ねぎ: 300, なす: 400}
#キーを配列に格納
item = params.keys
#バリューを配列に格納
price = params.values

puts ""
puts "いらっしゃいませ！商品を選んでください。"
puts ""

params.each.with_index(1) do |(key, value), i|
  puts "#{i}.#{key}(#{value}円)"
end

while true
  puts ""
  #printにすると、改行がされないので
  print "商品の番号を選択　＞"

  #入力番号を整数で取得する
  select_num = gets.to_i

  break if (1..4).include?(select_num)
  puts "１〜４を入力してください。"
end

puts ""
puts "#{item[select_num-1]}ですね。何個買いますか？"

while true
  puts ""
  print "個数を入力　＞"

  quantity = gets.to_i

  break if quantity > 1

  puts "１以上の数字を入力してください"
end

total_price = price[select_num-1] * quantity

if quantity >= 5
  total_price = (total_price * 0.9).floor

  puts ""
  puts "５個以上なので１０％割引になります！"
  puts "#{item[select_num-1]}が#{quantity}個で、合計金額は#{total_price}円です。"
  puts "お買い上げありがとうございました！"
  puts ""

else
  puts ""
  puts "#{item[select_num-1]}が#{quantity}個で、合計金額は#{total_price}円です。"
  puts "お買い上げありがとうございました！"
  puts ""
end




