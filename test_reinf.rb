require 'minitest/autorun'
require 'minitest/pride'
require './reinf.rb'

class TestTeam < MiniTest::Test

  def setup
    @team = Team.new('Bench Warmers', 'Cosmic', ['Spider Man', 'The Blob', 'Goku', 'Captain Picard'])
    @maet = Team.new('Sremraw Hcneb', 'Cimsoc', ['Nam Redips', 'Ukog', 'Dracip'])
  end

  def test_to_hash_name_level
    benchers = @team.to_hash
    remraws = @maet.to_hash
    assert_equal 'Bench Warmers', benchers[:team_name]
    refute_equal 'Bench Warmers', remraws[:team_name]
  end

  def test_to_hash_level
    benchers = @team.to_hash
    remraws = @maet.to_hash
    assert_equal 'Cosmic', benchers[:level]
    refute_equal 'Cosmic', remraws[:level]
  end

  def test_to_hash_points
    benchers = @team.to_hash
    remraws = @maet.to_hash
    remraws[:points] = 4
    assert_equal 0, benchers[:points]
    refute_equal 0, remraws[:points]
  end

end
