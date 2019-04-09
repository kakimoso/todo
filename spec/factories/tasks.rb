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

FactoryBot.define do
  factory :task do
    title { "MyString" }
    deadline { "2019-04-05 11:44:59" }
    status { "" }
    user { "" }
  end
end
