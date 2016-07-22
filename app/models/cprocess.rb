class Cprocess < ActiveRecord::Base
  
  belongs_to :area

  has_many :activities

end
