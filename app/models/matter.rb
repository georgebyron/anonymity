class Matter < ActiveRecord::Base

has_many :comments
belongs_to :article

end
