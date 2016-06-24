class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         

enum role: [ :teacher, :student ,:guest]

 
 private 
  
  def default_role
    self.role ||= 0
  end

end



