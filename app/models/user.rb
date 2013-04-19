# == Schema Information
# Schema version: 20130416121124
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation

  # when there is a password_digest column in the DB, this mixin will add
  # :password and :password_confirmation presence validation, :authenticate
  has_secure_password


  # this creates a virtual attribute for holding the password
  # attr_accessor :password

  validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}

  # has_secure_password does not have this check
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true


  # some DBs do not have case-insensitive indices (like SQLIte and PostgreSQL), so we take care to unify the case, p.253
  before_save { self.email.downcase! }

end
