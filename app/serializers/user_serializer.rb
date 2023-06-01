class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar, :name, :email
end