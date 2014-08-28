class Product < ActiveRecord::Base
  validates :title, :description, :image_url, presence: true
<<<<<<< HEAD

  validates :price, numericality: {greater_than_or_equal_to: 0.01}

  validates :title, uniqueness: true

  validates :image_url, allow_blank: true, format: {

  with: %r{\.(gif|jpg|png)\Z}i,

  message: 'must be a URL for GIF, JPG or PNG image.'

  }
=======
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, { allow_blank: true, format: { 
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
}
}
>>>>>>> d70c3817d4ba347fe90344d69a1b25422ffa1718
end
