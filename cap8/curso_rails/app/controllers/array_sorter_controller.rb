class ArraySorterController < ApplicationController
  before_filter :init_array
  
  def init_array
    @array = []
    prang = Random.new
    10.times do |num|
      @array.push(prang.rand(20))
    end
  end
  
  def list
  end

  def sort
    @array.sort!
  end
end
