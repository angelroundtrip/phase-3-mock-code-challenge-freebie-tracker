class Freebie < ActiveRecord::Base
  belongs_to :company
  belongs_to :dev

  # Freebie#dev - this is COMPLETE due to belongs_to :dev
  # returns the Dev instance for this Freebie

  # Freebie#company - this is COMPLETE due to belongs_to :company
  # returns the Company instance for this Freebie
  
  # should return a string formatted as follows: {insert dev's name} owns a {insert freebie's item_name} from {insert company's name} - INSTANCE METHOD
  def print_details
    binding.pry
    "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
  end
end
