# == Schema Information
#
# Table name: tasks
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  deadline   :datetime         not null
#  status     :integer          not null
#  user_id    :bigint(8)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  priority   :integer          default("top"), not null
#

class Task < ApplicationRecord
  belongs_to :user

  enum status: {
    untouched: 0,
    started: 1,
    completed: 2
  }

  enum priority: {
    top: 0,
    next: 1,
    other: 2
  }
end
