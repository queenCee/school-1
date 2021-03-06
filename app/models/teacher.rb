class Teacher < User

  # can post many posts
  has_many :posts, dependent: :destroy , foreign_key: 'user_id'

  # teacher post can have many tags
  has_many :post_tags, dependent: :destroy, foreign_key: 'user_id'
  has_many :tags , through: :post_tags

  # can teach many grades
  has_many :user_grades, dependent: :destroy, foreign_key: 'user_id'
  has_many :grades , through: :user_grades


end