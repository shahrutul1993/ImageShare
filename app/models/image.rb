class Image
  include Mongoid::Document
  include Mongoid::Paperclip

  field :album_id, type: Integer
  # attr_accessible :file
   # belongs_to :album

   embedded_in :album, :inverse_of => :images
  has_mongoid_attached_file :image
end