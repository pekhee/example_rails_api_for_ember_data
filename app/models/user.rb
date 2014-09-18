class User < ActiveRecord::Base
  has_many :profiles

  accepts_nested_attributes_for :profiles
end
