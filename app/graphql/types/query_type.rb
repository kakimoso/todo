Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :allTasks, Types::TaskType.to_list_type do
    description "get current_user's tasks"
    resolve ->(obj, args, ctx) {
      ctx[:current_user].tasks.all
    }
  end

  field :findTaskBy, Types::TaskType.to_list_type do
    description "get task by id"
    argument :id, types.Int
    argument :title, types.String

    resolve ->(obj, args, ctx) {
      tasks = ctx[:current_user].tasks.where('title like ?', "%#{args.title}%")
      tasks if tasks
    }
  end
end
