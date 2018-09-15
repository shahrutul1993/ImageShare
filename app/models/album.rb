class Album
  include Mongoid::Document
  include Mongoid::Timestamps::Created

  field :name, type: String
  field :user_id, type: Integer
  field :created_at, type: Date  

  belongs_to :user
  embeds_many :images, :cascade_callbacks => true
  accepts_nested_attributes_for :images, :allow_destroy => true
end
