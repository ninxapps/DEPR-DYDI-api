class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :text, :nsfw, :category_id
  # belongs_to :user
  # belongs_to :category

  attribute :category_name
  def category_name
  	object.category.name.capitalize
  end

  # def nsfw
  # 	object.nsfw || object.category.nsfw
  # end
end
