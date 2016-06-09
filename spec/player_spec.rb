
require 'player'

describe 'Player' do
	#subject(:dave) { Player.new('Dave') }
	describe '#name' do 
		dave = Player.new('Dave')
		it 'returns players name' do 
			expect(dave.name).to eq 'Dave'
		end
	end
end
