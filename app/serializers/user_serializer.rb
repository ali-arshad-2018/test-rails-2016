class UserSerializer < ActiveModel::Serializer

  has_many :task_lists
  attributes :id, :name, :email

end