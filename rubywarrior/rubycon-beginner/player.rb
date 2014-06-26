class Player
	@health = 20

  def play_turn(warrior)
  
  case warrior.health
  when 0..9
	#must restore soon, go backwards?
	if warrior.feel(:backward).empty? 
		getting_hurt(warrior)? warrior.walk!(:backward) : warrior.rest!
	elsif  warrior.feel(:backward).captive
		warrior.rescue!(:backwards)
	else
		getting_hurt(warrior)? warrior.walk! : warrior.rest!
	end
  when 10..20
 		if warrior.feel.empty? 			
			getting_hurt(warrior)?  warrior.walk! : warrior.health < 20? warrior.rest! : warrior.walk!
		else
			warrior.feel.captive?? warrior.rescue! : warrior.attack!
		end
		
	end
  @health= warrior.health		
  end
  
  def getting_hurt(warrior)
	if @health.nil?  
		return false 
	else
		return warrior.health < @health
	end
  end
end
