class Album
  include Mongoid::Document
  include Mongoid::Timestamps::Created

  field :name, type: String
  field :user_id, type: Integer
  field :created_at, type: Date  

  belongs_to :user
  has_many :images
  accepts_nested_attributes_for :images, :allow_destroy => true
end
