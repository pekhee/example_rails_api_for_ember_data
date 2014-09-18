class ProfileSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name, :description

  has_one :user
end
