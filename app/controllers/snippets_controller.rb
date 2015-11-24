class SnippetsController < ApplicationController
  authenticated!

  def index
    @snippets = current_user.snippets
  end

  def show
    @snippet = current_user.snippets.find(params[:id])
  end

  def new
    @snippet = current_user.snippets.new
  end

  def create
    @snippet = current_user.snippets.create(snippet_params)
    respond_with @snippet
  end

  def edit
    @snippet = current_user.snippets.find(params[:id])
  end

  def update
    @snippet = current_user.snippets.find(params[:id])
    @snippet.update(snippet_params)
    respond_with @snippet
  end

  def destroy
    @snippet = current_user.snippets.find(params[:id])
    @snippet.destroy
  end

  private

    def snippet_params
      params.require(:snippet).permit :title, :content, :public, :language
    end

end
