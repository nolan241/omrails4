class Pin < ActiveRecord::Base
     belongs_to :user
     has_attached_file :image, :styles => { :xlarge => "1200x1200>", :large => "900x900>", :medium => "300x300>", :thumb => "100x100>" }
end