require_relative 'node'

class LinkedList
  attr_reader :head,
              :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    if @head
      current_node = @head
      @count.times {
        current_node = current_node.next_node unless  current_node.next_node == nil
        current_node = current_node if current_node.next_node == nil
      }
      current_node.next_node = Node.new(data)
    end
    @head = Node.new(data) unless @head
    @count += 1
  end

  def to_string
    string = []
    current_node = @head
    @count.times {
      string.push(current_node.data)
      current_node = current_node.next_node
    }
    string.join(" ")
  end

  def prepend(data)
    list = @head
    @head = Node.new(data)
    @head.next_node = list
    @count += 1
  end

  def insert(index, data)
    current_node = @head
    placement  = current_node
    index.times {
      placement = current_node
      current_node = current_node.next_node
    }
    insert = Node.new(data)
    insert.next_node = current_node
    placement.next_node = insert
    @count += 1
  end

  def find(index, elements)
    string = []
    current_node = @head
    index.times {
      current_node = current_node.next_node
    }
    elements.times {
      string.push(current_node.data)
      current_node = current_node.next_node
    }
    string.join(" ")
  end

  def includes?(data)
    current_node = @head
    @count.times {
    if current_node.data == data
      return true
    elsif current_node.next_node == nil
      return false
    else
      current_node = current_node.next_node
    end
    }
  end

  def pop
    @count -= 1
    current_node = @head
    last_node = current_node
    @count.times {
      last_node = current_node
      current_node = current_node.next_node
    }
    last_node.next_node = nil
  end

end
