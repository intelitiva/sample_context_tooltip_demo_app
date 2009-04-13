class MainController < ApplicationController
  def index
  end

  def prototype
  end

  def ajax
    render :partial => 'ajax_content'
  end
end
