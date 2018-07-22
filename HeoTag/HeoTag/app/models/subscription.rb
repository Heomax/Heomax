class Subscription < ApplicationRecord
  validates_uniqueness_of :tag, case_sensitive: false
  validates_uniqueness_of :email
  validates :tag, presence: true
  validates :email, presence: true
end
