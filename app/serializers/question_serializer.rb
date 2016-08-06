class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :text, :nsfw
  has_one :user
  has_one :category
end
