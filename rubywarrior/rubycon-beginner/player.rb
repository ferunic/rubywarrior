class Player
  def play_turn(warrior)
		if warrior.feel.empty? 
			warrior.health >= 20? warrior.walk! : warrior.rest!
		else
			warrior.attack!
		end
  end
end
