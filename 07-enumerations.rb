friends = [:Sharon, :Leo, :Leila, :Brian, :Arun]
invited_list = []


# for friend in friends do
#   if friend != :Brian
#     invited_list.push(friend)
#   end
# end

# invited_list =  friends.select { |friend| friend != :Brian}
invited_list = friends.reject{ |friend| friend == :Brian }

p invited_list

