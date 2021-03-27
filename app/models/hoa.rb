class Hoa < ActiveRecord::Base
  has_many :listings
  # hoas reader returns all hoas in array

  # hoas<< save to database
  # hoas.delete(hoa obj)
  # hoas.destroy(hoa obj)
  # hoas= [hoa objects...]
  # hoa_ids
  # hoa_ids= [1,2,3]
  # hoas.clear
  # hoas.empty?
  # hoas.size
  # hoas.find()
  # hoas.exists?()
  # hoas.build(attr) not save automatically
  # hoas.create(attr) will save
  # hoas.create!(attr)
  # hoas.reload

end
