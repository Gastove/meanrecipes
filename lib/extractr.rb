
require 'open_uri'

module Extractr

  private backend_url = ENV['BACKEND_BASE_URL'] + "/"
  private query_path = ""
  private retrieve_path = "test-recipe/"

  def query_extractr(search_term)
  end

  def retrieve_result()
    url = backend_url + retrieve_path
    pointer = oepn(url)
    hash = JSON.parse(pointer.read)
    return hash
  end

end
