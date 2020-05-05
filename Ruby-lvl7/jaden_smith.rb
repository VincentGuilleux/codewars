class String
  def toJadenCase
    split.map(&:capitalize).join(' ')
  end
end

str = "How can mirrors be real if our eyes aren't real"
pp str.toJadenCase()
