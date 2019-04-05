Types::TaskType = GraphQL::ObjectType.define do
  name "Task"
  field :id, !types.Int
  field :title, !types.String
  field :status, !types.Int
  field :priority, !types.Int
end
