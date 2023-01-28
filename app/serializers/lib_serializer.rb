class LibSerializer < ActiveModel::Serializer
    attributes :id, :name, :opening_time, :closing_time
end