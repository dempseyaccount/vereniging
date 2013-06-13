class User < ActiveRecord::Base
  #                           /^[a-zA-Z0-9_-]+$/,
  #                          old format "with: /\A[a-zA-Z0-9_-]+\Z/,"
  
  # ruby -Itest test/unit/user_test.rb
  # ruby -Itest test/unit/user_test.rb
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
  				  :first_name, :last_name, :profile_name
  # attr_accessible :title, :body
  
  validates :first_name, presence:true
  validates :last_name, presence:true
  validates :profile_name, presence:true,
                          uniqueness: true,
                          format: {
                            with: /\A[a-zA-Z0-9_-]+\Z/,
                            message: 'My Profile Without Spaces'
                          }
  
  
  has_many :statuses
  
  def full_name 
    first_name + " " + last_name
  end
end
