puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
# company and dev id can get randomized when using Company.pluck(:id).sample or Dev.pluck(:id).sample
Freebie.create(item_name: "Laptop", value: 1500, company_id: 4, dev_id: 3)
Freebie.create(item_name: "Graphics Card", value: 800, company_id: 1, dev_id: 1)
Freebie.create(item_name: "Monitor", value: 400, company_id: 2, dev_id: 4)
Freebie.create(item_name: "Ram", value: 150, company_id: 3, dev_id: 2)

puts "Seeding done!"
