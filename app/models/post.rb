class Post < ActiveRecord::Base
 has_and_belongs_to_many :components
  attr_accessible :description, :difficulty, :name, :time, :component_ids, :id_user
  belongs_to :user

  validates :name, :presence => true, :uniqueness => true
  validates :difficulty,  :presence => true, :numericality => { :only_integer => true }
  validates :time, :presence => true, :numericality => { :only_integer => true }
  validates :description, :presence => true
  
  UNRANSACKABLE_ATTRIBUTES = ["id", "created_at", "updated_at", "description"]
   def self.ransackable_attributes auth_object = nil
    (column_names - UNRANSACKABLE_ATTRIBUTES) + _ransackers.keys
  end			 
end



