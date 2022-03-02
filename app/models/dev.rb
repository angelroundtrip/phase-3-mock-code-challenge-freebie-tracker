class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  # Dev#received_one?(item_name)
  # accepts an item_name (string) and returns true if any of the freebies associated with the dev has that item_name, otherwise returns false
  def received_one?(item_name)
    # binding.pry
    self.freebies.find_by(item_name: item_name) ? true : false
    # !!self.freebies.find_by("item_name = ?", item_name)   => Also valid because the !! gives the opposite of the opposite
    # self.freebies.pluck(:item_name).include?(item_name)
  end

  # Dev#give_away(dev, freebie)
  # accepts a Dev instance and a Freebie instance, changes the freebie's dev to be the given dev; your code should only make the change if the freebie belongs to the dev who's giving it away
  def give_away(dev, freebie)
    # binding.pry
    # check if freebie belongs to dev trying to giv
    # if self.id DOES NOT EQUAL freebie.dev_id, return ...
    if self.id != freebie.dev_id
      return "NO FREEBIES FOR YOU"
    end
    freebie.update(dev_id: dev.id)             # freebie.dev_id = dev.id  + # freebie.save     >> also works
  end
end
