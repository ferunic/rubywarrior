class Player
	@health = 20
  def play_turn(warrior)
		if warrior.feel.empty? 			
			(warrior.health >= 20 or getting_hurt(warrior))?  warrior.walk! :  warrior.rest!
		else
			warrior.attack!
		end
		@health= warrior.health		
  end
  def getting_hurt(warrior)
	return warrior.health < @health
  end
end
