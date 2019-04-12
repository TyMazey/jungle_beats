class JungleBeat
  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  def append(string)
    push = string.split(" ")
    push.each do |word|
      @list.append(word)
    end
  end

  def count
    @list.count
  end

  def play
    beats = @list.find(0, count)
    `say -r 500 #{beats}`
    #the Boing voice isnt working, saying command not found
  end
end
