class Item < ActiveRecord::Base
  belongs_to :user

  validates :text, presence: true
  validates :completed, inclusion: { in: [true, false] }
end
