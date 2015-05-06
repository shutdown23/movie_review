class Movie < ActiveRecord::Base
	searchkick
	belongs_to :user
	has_many :reviews

	has_attached_file :image, storage: :s3, s3_credentials: 'config/s3.yml', styles: { :medium => "400x600#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end



