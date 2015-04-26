class Poll < ActiveRecord::Base
	belongs_to :user
  has_and_belongs_to_many :candidates

  accepts_nested_attributes_for :candidates, :reject_if => lambda { |a| a[:title].blank? } , :allow_destroy => true
end
