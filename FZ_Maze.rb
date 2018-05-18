# Encoding: utf-8

puts "＝＝福智迷宮小遊戲＝＝"
puts "歡迎您參加福智團體！"
puts ""
puts "請問您叫什麼名字？"
		name = gets.force_encoding("utf-8").chomp!

def continue
  puts "（請按ENTER鍵繼續）\r"
  gets
end

def ask_times
	puts "請問想聽幾次？"
	times = gets.chomp!.to_i
	while times == 0
		puts "請重新輸入。請問想聽幾次？"
		times = gets.chomp!.to_i
	end
	return times
end

loop do
	puts ""	
	puts "#{name}師兄／姐，請問您想學什麼法？"
	puts "1.參加福智廣論班。"
	puts "2.聽上師說法。"
	puts "3.成為學僧，親近上師。"
	puts "4.聽副住持如得澄清日常法師之死。"
	puts "5.我有病，想請上師為我治療。"
	puts "6.退出福智團體。"
	option = gets.chomp!
	puts ""	

	if option == "1"
		for k in 1..ask_times
			puts "聽不懂沒關係，師父的音檔多聽幾遍，以後就會懂了！（第#{k}次）"
		end
	end
	
	if option == "2"
		for i in 1..ask_times
			puts "好好學廣論，一定會成佛！（第 #{i}次）"
		end
	end


	if option == "3"
		puts "成為學僧之後，您精進修行了一段時間。。。"
		continue
		puts "由於表現優秀，您終於正式成為理路燦爛的如#{name}法師！"
		puts "接著，又過了一段時間。。。"
		continue
		puts "您得到前往加拿大的機會，終於可以親自見到上師了！"	
		puts "如此，又過了一段時間。。。"
		continue
		puts "僧人們注意到上師與身邊男眾法師太過親近，似乎有違戒律。"
		puts "部分僧人甚至選擇明哲保身，離開僧團！！！"
		continue
		puts "上師知道了以後，召集僧眾，給予教誡。"
		puts "她臉色凝重，逐一問大家問題。"
		loop do
			puts "上師問：「如#{name}法師，請問到死你會離開嗎？」"
			puts ""
			puts "請速速回答「會」或者「不會」！"
				answer = gets.force_encoding("utf-8").chomp!
			if answer == "不會"
				puts ""
				puts "上師開心地說：「非常好，如#{name}法師！我就知道你是眾人的表率。"
				puts "我看你氣色不是很好，今晚到我房間，讓我替你治療一下。」"
				continue
				break
			end
			if answer != "不會"
				puts "「我一個女生帶僧團很不容易，我的辛苦你懂嗎？」"
			end
		end
	end

	if option == "4"
		for j in 1..ask_times
			puts "一切謠言，純屬子虛烏有！（第#{j}次）"
		end
	end

	if option == "5"
		puts "上師目前很忙，有病請看醫生。"
		puts "學法須依照次第，循序漸進，成功沒有捷徑。"
	end

	if option == "6"
		puts "恭喜重生！"
		break
	end

puts ""
puts "-"*57
puts "希望以上的學習讓您很有成長！回家記得觀功念恩，憶念師長功德喔！"
puts "-"*57
continue

end
