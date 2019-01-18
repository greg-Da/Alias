require 'launchy'

arr_url = ARGV
x = 0
url = "www.google.com/search?q="
while arr_url[x]
	if x == 0
		url += "#{arr_url[x]}"
	else
	url += "+#{arr_url[x]}"
	end
		x += 1
end

Launchy.open(url)
