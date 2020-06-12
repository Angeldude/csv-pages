class PagesController < ApplicationController
  def index
    @pages = Page.root
  end

  def upload
    require 'csv'
    respond_to do |format|
      Page.destroy_all
      CSV.read(params['file'], headers: true).each do |row|

        hashed = Page.determine_page_level(row['relative_path'])
        if hashed[:level] == 'root' 
            Page.create!(name: row['name'], code_path: '/', root: true)
        elsif hashed[:level] == 'top'
            root = Page.find_by_code_path('/')
            Page.create!(name: row['name'], code_path: hashed[:value], root: false, page_id: root.id)
        else
            value = hashed[:value]
            nested = Page.find_by_code_path(value.first)
            Page.create!(name: row['name'], code_path: value.last, root: false, page_id: nested.id)
        end
      end
      format.html {redirect_to root_path}
    end
  end

  private

  def permit_params
    params.permit(:file)
  end
end
