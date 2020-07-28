class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.sort_borough(borough_name)
    self.select{|sort| sort.borough == borough_name }
  end


end
