class Pin < ActiveRecord::Base
    belongs_to :user
    has_attached_file :image, :styles => { :xlarge => "1200x1200>", :large => "900x900>", :medium => "300x300>", :thumb => "100x100>" }
    validates_attachment_presence :image
    validates_attachment_size :image, :less_than => 5.megabytes
		validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
		validates :description, :presence => true
end