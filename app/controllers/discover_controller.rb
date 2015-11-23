class DiscoverController < ApplicationController
  def index
    @snippets = Snippet.where.not(private: true)
  end
end
