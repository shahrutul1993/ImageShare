class Image
  include Mongoid::Document
  include Mongoid::Paperclip

  field :album_id, type: Integer
   belongs_to :album

  	has_mongoid_attached_file :image, :styles => { :medium => "640x480>", :thumb => "100x100#"}
  	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end