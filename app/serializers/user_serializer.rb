class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest, :bio, :join_date
end
