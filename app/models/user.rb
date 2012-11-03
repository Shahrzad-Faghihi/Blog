class User < ActiveRecord::Base
  attr_accessible :address, :data_of_birth, :favorite_blog, :firt_name, :last_name, :password, :phone_number, :user_name

  attr_writer :current_step

  acts_as_authentic


  def steps
  	["step1", "step2", "step3"]
  end	

  def current_step
  	@current_step || steps.first
  end	

  def next_step
  	self.current_step = steps[steps.index(current_step)+1]
  end

  def previous_step
  	self.current_step = steps[steps.index(@current_step)-1]
  end	

  def first_step?
    current_step == steps.first
  end

  def last_step?
    current_step == steps.last
  end

end
