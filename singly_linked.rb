class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  print "\n\n"
  def initialize
    @head = nil
  end

  def append_list(value)
    if @head.nil?
      @head = Node.new(value)
      return
    end
    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(value)
  end

  def prepend_list(value)
    newhead = Node.new(value)
    newhead.next_node = @head
    @head = newhead
  end

  def find_list(index)
    return p 'No list' if @head.nil?

    puts
    current_node = @head
    index.times do current_node = current_node.next_node end
    p current_node.value
    return current_node
  end

  def addat_list(index,value)
    if @head.nil?
      p 'List is empty, assigning value as head'
      @head = Node.new(value)
      return
    end
    prepend_list(value) if index.zero?
    before_node = find_list(index - 1)
    current_node =  before_node.next_node
    nextnode = Node.new(value)
    before_node.next_node = nextnode
    nextnode.next_node = current_node
  end


  def addafter_list(target,value)
    if @head.nil?
      p 'List is empty, assigning value as head'
      @head = Node.new(value)
      return
    end
    current_node = @head
    until current_node.next_node.nil?
      if current_node.value == target
        nextnode = Node.new(value)
        nextnode.next_node = current_node.next_node
        current_node.next_node = nextnode
        current_node = current_node.next_node
        next
      end
      current_node = current_node.next_node
    end
  end

  def removeat_list(index)
    return 'Empty list' if @head.nil?

    current_node = find_list(index)
    remove_list(current_node.value)
  end

  def remove_list(value)
    return p 'Empty list' if @head.nil?

    current_node = @head
    if current_node.value == value
      @head = current_node.next_node 
      return
    end
    until current_node.next_node.nil?
      if current_node.next_node.value == value
        if current_node.next_node.next_node.nil?
          current_node.next_node = nil
        end
        current_node.next_node = current_node.next_node.next_node
      end
      current_node = current_node.next_node
    end
  end

  def length_list
    return p 'Empty list' if @head.nil?

    current_node = @head
    cnt = 0
    while current_node = current_node.next_node
      cnt += 1
    end
    return cnt
  end

  def sort_list()
    return p 'Empty list' if @head.nil?

    cnt = length_list
    current_node = @head
    check = 0
    until current_node.next_node.nil?
      if current_node.value > current_node.next_node.value
        tmp = current_node.value
        current_node.value = current_node.next_node.value
        current_node.next_node.value = tmp
      else
        check += 1
      end
      current_node = current_node.next_node
    end
    sort_list if cnt != check
  end

  def print_list()
    print "\n\n"
    return p 'Empty list' if @head.nil?

    current_node = @head
    p current_node.value
    while (current_node = current_node.next_node)
      p current_node.value
    end
  end
end

class Exper
  list = LinkedList.new
  list.sort_list
  list.append_list(98)
  list.append_list(2)
  list.append_list(5)
  list.append_list(-78)
  list.addafter_list(5, 45)
  list.prepend_list(1000)
  list.append_list(8)
  list.append_list(2)
  list.append_list(54)
  list.addafter_list(2, 9999)
  list.append_list(6)
  list.print_list
  list.remove_list(9999)
  list.remove_list(1000)
  list.remove_list(54)
  list.print_list
  list.sort_list
  list.length_list
  list.print_list
  list.find_list(4)
  list.addat_list(4,5555555)
  list.removeat_list(5)
  list.print_list
end
