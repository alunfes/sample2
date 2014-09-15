module AsaiVis
	require "open-uri"
    require "nokogiri"
    require 'date'

	def getHtml
=begin
		num = 0
          array = Array.new
          doc = Nokogiri::HTML(open("http://asai.vis.ne.jp/mikawa/joho/jikan-seikaku.shtml"))
          doc.xpath('//*').each do |node|
               puts node.text
               array.push node.text
               num = num +1
          end
          return array
=end

          array = Array.new
          open("http://asai.vis.ne.jp/mikawa/joho/jikan-seikaku.shtml").each do |f|
          	if f.include?("Standard = new Date( Date.parse")
          		array.push f
          	end
          end
          @time_getter = TimeGetter.new(:datetime => DateTime.now, :html => array[0] )
          @time_getter.save
          return array
	end
end