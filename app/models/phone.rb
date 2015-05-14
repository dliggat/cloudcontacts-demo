class Phone < ActiveRecord::Base
  belongs_to :contact
  validates :contact, presence: true

  validates :number, presence: true
end
