class Contact < ActiveRecord::Base
  has_many :phones, dependent: :destroy
  has_many :emails, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name,  presence: true

  accepts_nested_attributes_for :phones, allow_destroy: true
  accepts_nested_attributes_for :emails, allow_destroy: true
end
