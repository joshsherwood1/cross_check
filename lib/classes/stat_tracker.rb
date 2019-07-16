require 'csv'
require 'pry'

class StatTracker
  attr_reader

  # def initialize(argument)
  #   @argument = argument
  # end

  def self.from_csv(locations)
    # info = {}
    # locations.each {|key, value| info[key] = CSV.read(info[key] = value)}
    locations.each {|k, v| CSV.table(v)}
    # binding.pry
    # info
  end

end
