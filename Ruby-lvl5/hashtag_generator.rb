def generateHashtag(str)
  # La 2eme condition n'est pas simplement str.length >= 140
  # car couvre le corner case du test plus bas : 'code' + ' ' * 140 + 'wars'
  return false if str.strip.empty? || str.gsub(/\s+/, '').length >= 140

  str.split.map(&:capitalize).join.gsub(/\s+/, '').prepend('#')
end

pp generateHashtag('Do We have A Hashtag')
pp generateHashtag('') == false # Expected an empty string to return false
pp generateHashtag(' ' * 200) == false # Still an empty string
pp generateHashtag('Do We have A Hashtag') == '#DoWeHaveAHashtag' # Expected a Hashtag (#) at the beginning
pp generateHashtag('Codewars') == '#Codewars' # Should handle a single word
pp generateHashtag('Codewars Is Nice') == '#CodewarsIsNice' # Should remove spaces
pp generateHashtag('Codewars is nice') == '#CodewarsIsNice' # Should capitalize first letters of words
pp generateHashtag('code' + ' ' * 140 + 'wars') == "#CodeWars"
pp generateHashtag('Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat') == false # Should return false if the final word is longer than 140 chars
pp generateHashtag('a' * 139) == '#A' + 'a' * 138 # Should work
pp generateHashtag('a' * 140) == false # Too long

# BEST SOLUTION
# def generateHashtag(str)
#   str = "#" << str.split.map(&:capitalize).join
#   str.size <= 140 && str.size > 1 ? str : false
# end
