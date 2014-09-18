require_relative './rooms/room_in_south'

class GameOfRooms
  def get_user_input
    puts "You are in a dark room. There is a door at the north"
    print "> "
    get_input = gets.chomp.downcase

    quit_the_game = "Q"

    goto_south = TheRoomInSouth.new

    begin
      if get_input == "S" || get_input == "s"
        goto_south.print_message
      elsif get_input == "N"
        puts "The N ROOM"
      elsif get_input == "E" || get_input == "E"
        puts "The E ROOM"
      elsif get_input == "Inventory" || get_input == "inventory"
        goto_south.print_out_the_items
      elsif get_input == "W" || get_input == "w"
        puts "The W ROOM"
      elsif get_input == "Q" || get_input == "q"
        puts "Bye Bye"
        break
      else
        puts "I don't understand"
      end
    end while not quit_the_game
  end
end


run_the_game = GameOfRooms.new

run_the_game.get_user_input