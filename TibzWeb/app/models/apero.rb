class Apero < ActiveRecord::Base

  belongs_to :user
  belongs_to :category
  attr_accessible :category_id, :content, :date, :hour, :name, :user_id, :visibility
  validates :visibility, :presence => true
  validates :name, :presence => true
  validates :content, :presence => true
  validates :category_id, :numericality => { :less_than_or_equal_to => 3}
  validate :check_date
 

  def check_date
  	if date < Date.today
  		errors.add(:date, "can't be in the past")
  	end
  end
  
  def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

  def self.visibility_types
     ['Amis', 'Public', 'Collegues']
  end

end


