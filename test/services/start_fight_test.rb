require 'test_helper'

class StartFightTest < ActiveSupport::TestCase
  setup do 
    @arena = create(:arena)
  end

  test 'when character 1 is stronger than character 2, he wins' do
    @arena = create(:arena, :character_1_stronger_than_character_2)
    winner, loser = StartFight.new(@arena).call 
    assert_equal winner.name, @arena.character_1.name   
  end

  test 'when character 2 is stronger than character 1, he wins' do
    winner, loser = StartFight.new(@arena).call 
    assert_equal winner.name, @arena.character_2.name
  end

  test 'creates historic for each actions' do
    StartFight.new(@arena).call
    assert_not_empty @arena.historic
  end

  test 'updates victory and experience for winner' do
    assert_difference('@arena.character_2.victory', 1) do
        StartFight.new(@arena).call
    end
  end

  test 'updates defeat and experience for loser' do
    assert_difference('@arena.character_1.defeat', 1) do
        StartFight.new(@arena).call
    end
  end

  test 'updates stats for both player' do
    assert_difference('@arena.character_2.victory_percentage') do
        StartFight.new(@arena).call
    end
  end
end
