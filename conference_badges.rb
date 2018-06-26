##
# #badge_maker takes a name as an argument and returns the text for a "badge"
##
def badge_maker(name)
  "Hello, my name is #{name}.";
end

##
# #batch_badge_creator takes in a list of names and returns the text for each badge
##
def batch_badge_creator(names)
  names.map { |name| puts badge_maker(name)};
end

#batch_badge_creator("Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz")
#                      ^        ^       ^           ^       ^       ^         ^
# => ["hello my name edgar", "hello my name is ada", "hello my name is charles"]

##
# #assign_rooms takes in a list of names and prints the names and room assignments
##
def assign_rooms(names)
  assignments = [];
  names.each_with_index { |name, index| assignments.push("Hello, #{name}! You'll be assigned to room #{index + 1}!")};
  return assignments;
end

##
# #printer takes in a list of names and outputs the badges and room assignments
##
def printer(names)
  batch_badge_creator(names).each { |name| puts name };
  assign_rooms(names).each {|name| puts name};
end
