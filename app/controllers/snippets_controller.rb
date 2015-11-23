class SnippetsController < ApplicationController
  def index
    @snippets = Snippet.all
  end

  def show
    @snippet = Snippet.find(params[:id])
  end

  def new
    @snippet = Snippet.new
  end

  def create
    @snippet = Snippet.create(snippet_params)
    respond_with @snippet
  end

  def edit
    @snippet = Snippet.find(params[:id])
  end

  def update
    @snippet = Snippet.find(params[:id])
    @snippet.update(snippet_params)
    respond_with @snippet
  end

  def destroy
    @snippet = Snippet.find(params[:id])
    @snippet.destroy
  end

  private

    def snippet_params
      params.require(:snippet).permit :title, :content
    end

end
