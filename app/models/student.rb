require_relative '../../db/config'

class Student < ActiveRecord::Base
 
  validates :email, :format => {:with => /^.+@.+\...+$/ }
  validates :email, :uniqueness => true
  validates :age, :numericality => { :greater_than => 4 }
  validates :phone, :format => {:with => /\(\d{3}\).\d{3}.\d{4}.*/ }


  def name
     "#{first_name} #{last_name}"
  end

  def age
     ((Time.now.to_date - birthday)/365).to_i
  end
end
