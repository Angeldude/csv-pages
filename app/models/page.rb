class Page < ApplicationRecord
    has_many :nested_pages, class_name: 'Page'

    scope :root, -> {where(root: true)}


    def self.determine_page_level(string)
        temp = string&.split('/')
        if !temp
            {level: 'root', value: []}
        elsif temp.size == 2
            {level: 'top', value: temp.last}
        else
            {level: 'nested', value: temp[1..-1]}
        end
           
      end

end
