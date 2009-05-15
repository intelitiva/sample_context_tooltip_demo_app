class MainController < ApplicationController
  def index
  end

  def prototype
  end

  def jquery_performance
  end

  def prototype_performance
  end

  def ajax
    render :partial => 'ajax_content'
  end

  def add_container
    render_container('added')
  end

  def add_ajax_container
    render_container('added_ajax')
  end

  private
    def render_container(partial)
      render :update do |page|
        if params[:prototype]
          page.call('insert_html', 'added-containers', render(:partial => partial, :locals => { :index => rand(100000) }))
        else
          page.insert_html :bottom, 'added-containers', :partial => partial, :locals => { :index => rand(100000) }
        end
      end
    end
end
