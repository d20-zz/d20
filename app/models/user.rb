class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
  								:first_name, :last_name1, :last_name2, :profile_name, :country, :state, :city, :street, :city_sector,
  								:ext_number, :int_number, :zip_code, :land_line, :twitter, :cell_phone, :curp, :ife_state, 
                  :ife_locality, :ife_number, :birthday, :gender, :ife_county, :ife_section, 
                  :as => [:default, :admin]

  attr_accessible :type_of, as: :admin

  validates :state, presence: true

  validates :profile_name, presence: true,
                            uniqueness: true,
                            format: {
                              with: /^[a-zA-Z0-9_-]+$/,
                              message: 'No usar caracteres invalidos.'

                            }





  # attr_accessible :title, :body
end
