class User < ActiveRecord::Base

    attr_accessor :password_confirmation, :password
    attr_accessible :user_name, :name, :email, :password, :password_confirmation

    validates :user_name, :uniqueness => true
    
    validates :name, :length => { :in => 2..75 }

    validates :email, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }

    validates :password, :length => { :in => 6..20 },
    :confirmation =>true

    validates :password_confirmation, :presence => true
end
