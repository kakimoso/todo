Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :allTasks, !Types::TaskType.to_list_type do
    description "get current_user's tasks"
    resolve ->(obj, args, ctx) {
      ctx[:current_user].tasks.all
    }
  end
end
