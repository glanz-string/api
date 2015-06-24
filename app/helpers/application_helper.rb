module ApplicationHelper
  def redirect_to_index
    redirect_to :controller => 'index', :action => 'index'
    return
  end
  def relative_root
    ENV['RAILS_RELATIVE_URL_ROOT']
  end
end
