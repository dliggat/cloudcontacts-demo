FactoryGirl.reload  # To reset sequences.

# All seed data declarations below:
10.times do
  FactoryGirl.create :contact_with_associations
end
