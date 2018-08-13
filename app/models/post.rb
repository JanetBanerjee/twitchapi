class Post < ApplicationRecord
  belongs_to :user, optional: true
  validates_presence_of :date, :uid

  serialize :follows, Array

end