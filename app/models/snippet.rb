class Snippet < ActiveRecord::Base
  belongs_to :user

  enum language: [ :ruby, :bash ]

  has_many :copies
end
