class Page < ApplicationRecord
    has_many :nested_pages, class_name: 'Page'

    scope :root, -> {where(:root, true)}

end
