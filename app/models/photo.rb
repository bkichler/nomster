class Photo < ApplicationRecord
    belongs_to :place
    mount_uploader :picture

    validates :caption, presence: true
    validates :picture, presence: true
end
