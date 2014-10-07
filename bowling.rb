
class Game
	attr_accessor :name, :frames, :total

	def initialize(name)
		@name = name
		@frames = 0
		@total = 0
		p "#{name} just joined the game"
		p "****************************"
	end

	def throw
		
		until @frames == 10
			pin1 = rand(0..10)

			if pin1 == 10 
				@total += 10
				p "WOW, STRIKE. You have 2 bonus round"
				2.times {bonus()}
				
			else
			
				p "Your first point is #{pin1}"
				a = 10 - pin1
				pin2 = rand(0..a)

				if pin1 + pin2 == 10
					@total += 10
					p "Your second point is #{pin2}"
					p "You have SPARE. You have 1 bonus round"
					bonus()
					
				else
					@total = @total + pin1 + pin2
					p "Your second point is #{pin2}"
					p "*****************************"
					
				end
			end
			@frames += 1
		end

		p "EXELLENT PLAYER" if @total == 300
		p "#{@name} total point is #{@total}"

	end

	def bonus
		pin3 = rand(0..10)
		if pin3 == 10
			@total += 10
			p "STRIKE"
		end
		
		@total += pin3
		p "Your bonus point is #{pin3}" 
		p "***************************"
	end
end




thanh = Game.new(:Thanh)
thanh.throw

