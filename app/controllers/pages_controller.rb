class PagesController < ApplicationController
  def index
  end

  def upload
    # require 'csv'
    # CSV.read(params['file'], headers: true) do |x|
    #   p x
    # end
  end

  private

  def permit_params
    params.permit(:file)
  end
end
