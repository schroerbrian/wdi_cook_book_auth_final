# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  body       :string(255)
#  book_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
  attr_accessible :name, :body, :book_id

  belongs_to :book
end
