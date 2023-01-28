class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :published_at
  attribute :library

  #{id: 2434, title: "title", published_at: "335", library: {}}

  def library
    LibSerializer.new(object.lib)#.serializable_hash
  end
end
