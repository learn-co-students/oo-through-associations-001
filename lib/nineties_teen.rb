require 'pry'

class NinetiesTeen
  attr_accessor :name, :cd_collection

  def initialize(name)
    @name = name
    @cd_collection = []
  end

  def my_cd_collection
    puts "My CD Collection:"
    cd_collection.each { |cd| puts "#{cd.artist}: #{cd.title}" }
  end

  def buy_cd(cd)
    cd_collection << cd
    cd.teen = self
    new_coupon = Coupon.new
    cd.coupon = new_coupon
    new_coupon.cd = cd
  end

  def my_coupons
    cd_collection.collect { |cd| cd.coupon }
  end
end
