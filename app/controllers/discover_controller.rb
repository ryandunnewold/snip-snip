class DiscoverController < ApplicationController
  def index
    @snippets = Snippet.where(public: true)
  end
end
