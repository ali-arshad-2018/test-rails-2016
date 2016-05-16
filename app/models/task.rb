class Task < ActiveRecord::Base
  validates :title, :task_list_id, presence: true
  belongs_to :task_list
end
