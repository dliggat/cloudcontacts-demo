class Email < ActiveRecord::Base
  belongs_to :contact
  validates :contact, presence: true

  validates :address, presence: true
end
