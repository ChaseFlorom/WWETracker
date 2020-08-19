
class CustomRegistrationsController < Devise::RegistrationsController
  after_action :after_signup, :only => :create
  

  def before_signup
  end

  def after_signup
  	puts "USER SIGNED UP..................................................................................."
  	Apartment::Tenant.create(User.last.username)
  	Apartment::Tenant.switch!(current_user.username)
  end
end