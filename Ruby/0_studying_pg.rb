def song_decoder(str)
  #str.gsub(/(WUB)+/, ' ').strip
  str.split(/(WUB)+/).select{ |b| b!='WUB'}.join(' ').strip
end

puts song_decoder('WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB')
#  =>  WE ARE THE CHAMPIONS MY FRIEND
puts song_decoder('WUBWUBIWUBAMWUBWUBX')
puts song_decoder("AWUBWUBWUBBWUBWUBWUBC")
