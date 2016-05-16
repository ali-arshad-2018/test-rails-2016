class User < ActiveRecord::Base
  has_secure_password validations: false
  enum role: [:guest, :user, :admin]
  validates :email, presence: true, email: true, uniqueness: true, on: :create
  validates :password, presence: true, on: :create
  has_many :task_lists, dependent: :destroy
end