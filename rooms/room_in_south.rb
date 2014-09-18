class TheRoomInSouth 
  # def initialize 
  #   @list_of_items = []

  # end
  def print_message
    puts "You are in the forest. There is a lot of light. There is a bear sleeping"
    puts "You can see a sword"

    get_user_input

    @get_to_the_menu = GameOfRooms.new.get_user_input
    
  end

  def get_user_input
    @list_of_items = []
    
    pick_up_the_item = gets.chomp
    quit_to_menu = "menu"

    while not quit_to_menu
      if pick_up_the_item == "Pick sword"
        puts "You pick up a Sword"
        add_sword_to_file
      end
    end
  end

  def add_sword_to_file
    open_the_file = File.open("./rooms/inventory.txt", "w+")

    open_the_file << "A sword"
  end


  def print_out_the_items
    # @list_of_items.each do |item|
    #   p item
    # end
    print_the_inventory = File.open("./rooms/inventory.txt", "r")

    print "\t"; puts print_the_inventory.readlines

    

  end

end
