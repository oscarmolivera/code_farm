# httparty.rb
require 'httparty'

def topArticles(username, limit)
    most_commented_article = { title: '', num_comments: 0}
    @response = HTTParty.get("https://jsonmock.hackerrank.com/api/articles?author=#{username}&page=#{limit}")
    @body = JSON.parse(@response.body)
    @body['data'].map do |item|
        if item['num_comments'].to_i > most_commented_article['num_comments'].to_i
            most_commented_article['title'] = item['title']
        end
    end
    most_commented_article['title']
end

 topArticles("olalonde", 1)




def commonPrefix(inputs)
    pila = [[]]
    inputs.each_char.with_index do |ltr, idx|
        item = []
        item << inputs.slice(0,idx+1)
        pila << item
    end
    pila
end

p commonPrefix('ababaa')