Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :firstTask, Types::TaskType do
    description "return first task"
    resolve ->(obj, args, ctx) {
      Task.first
    }
  end

  # 追加
  field :findTaskBy, Types::TaskType do
    description "return a task"
    argument :id, types.Int
    resolve ->(obj, args, ctx) {
      Task.find_by(id: args.id)
    }
  end
end
