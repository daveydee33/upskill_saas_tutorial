class Contact < ActiveRecord::Base
  # applying rules to a new Contact object - require these values
  validates :name, presence: true
  validates :email, presence: true
  validates :comments, presence: true
end