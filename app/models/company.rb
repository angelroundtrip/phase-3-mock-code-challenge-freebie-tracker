class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

  # takes a dev (an instance of the Dev class), an item_name (string), and a value as arguments, and creates a new Freebie instance associated with this company and the given dev
  def give_freebie(dev, item_name, value)
    Freebie.create(dev_id: dev.id, item_name: item_name, value: value, company_id: self.id)
  end 

  # returns the Company instance with the earliest founding year - CLASS METHOD
  def self.oldest_company
    # binding.pry
    # self = Company in this case
    self.order(:founding_year).first
  end 
end
