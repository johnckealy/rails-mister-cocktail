class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true

  def image_pth(options = {})
      if self.photo.attached?
        if options[:banner]
          options = {width: 800, height: 300, crop: :fill}
        else
          options = {width: 500, height: 500, crop: :fill}
        end

        Cloudinary::Utils.cloudinary_url(self.photo.key, options)
      else
        ActionController::Base.helpers.asset_path('no_image.jpg')
      end
  end
end
