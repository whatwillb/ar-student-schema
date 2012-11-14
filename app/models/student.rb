require_relative '../../db/config'

class Student < ActiveRecord::Base
  def name
     "#{first_name} #{last_name}"
  end

  def age
     x = ((Time.now.to_date - birthday)/365).to_i
  end
end
