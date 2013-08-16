
module Locatr

  def search(search_params)
    # Search code will go here
    Recipe.find_by_name(search_params[:name])
    rescue_from ActiveRecord::RecordNotFound do
      result_key = query_extractr(search_params)
    end
    
  end

end

  
