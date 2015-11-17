  class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :timeoutable,
         :recoverable, :rememberable, :trackable, :validatable, :async,
         :token_authenticatable

  validates :device_platform, inclusion: { in: %w(android ios) }, allow_nil: true

  has_many :snippets
end