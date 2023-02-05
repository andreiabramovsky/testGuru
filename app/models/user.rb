require 'digest/sha1'

class User < ApplicationRecord

  has_many :test_passages, dependent: :destroy
  has_many :tests, through: :test_passages
  has_many :authored_tests, class_name: 'Test', foreign_key: 'author_id', dependent: :destroy

  has_secure_password

  def test_passage(test)
    test_passage.order(id: :desc).find_by(test_id: test.id)
  end

end
