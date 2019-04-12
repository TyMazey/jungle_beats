require './lib/node'
require './lib/linked_list'
require 'pry'

# node = Node.new("plop")
# node.data
# node.next_node

list = LinkedList.new
# <LinkedList head=nil #45678904567>
list.head
# nil
list.append("doop")
# "doop"
list
# <LinkedList head=<Node data="doop" next_node=nil #5678904567890#45678904567>
list.head
# <Node data="doop" next_node=nil #5678904567890>
list.head.next_node
# nil
list.append("deep")
# "deep"
list.head.next_node
# <Node data="deep" next_node=nil #5678904567890>
list.count
# 2
list.to_string
# "doop deep"
list.prepend("dop")
list.to_string
# "dop doop deep"
list.insert(1, "woo")
list.to_string
# "dop woo doop deep"
list.find(1, 2)
# woo doop
list.find(3, 1)
# deep
list.includes?("woo")
#true
list.includes?("wop")
#false
list.pop
list.to_string
#dop woo doop
list.pop
list.to_string
#dop woo
require "./lib/jungle_beat"
jb = JungleBeat.new
# <JungleBeat list=<LinkedList head=nil #234567890890#456789045678jb.list
# <LinkedList head=nil #234567890890jb.list.head
# nil
jb.append("deep doo ditt")
# "deep doo ditt"
jb.list.head.data
# "deep"
jb.list.head.next_node.data
# "doo"
jb.append("woo hoo shu")
# "woo hoo shu"
jb.count
# 6
binding.pry
