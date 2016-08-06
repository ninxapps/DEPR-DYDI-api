class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :choice
  has_one :user
  has_one :question
end
