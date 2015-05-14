class Contact < ActiveRecord::Base
  has_many :phones, dependent: :destroy
  has_many :emails, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name,  presence: true
end
