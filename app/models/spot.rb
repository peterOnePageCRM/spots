class Spot < ActiveRecord::Base

  def self.coordinates
    lattitude = Spot.pluck(:lattitude)
    longditude = Spot.pluck(:longditude)
    coordinates = lattitude.zip(longditude)
    coordinates.delete_if { |array| array.include?('0.0') }
    coordinates.delete_if { |array| array.include?(nil) }
    coordinates
  end
end 