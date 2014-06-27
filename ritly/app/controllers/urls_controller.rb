class UrlsController < ApplicationController

def index
	@urls = Url.all
	@url = Url.new
end

def show
	preview
end

def new
	@url = Url.new
end

def create
	@url = Url.new(url_params)
	@url.hash_code = SecureRandom.urlsafe_base64(8)
	@url.save
	if @url.save
		redirect_to @url
	else
		render 'new'
	end
end

def redirectors
	@url = Url.find_by hash_code: params[:code]
    if @url
      redirect_to @url.link
    else
      redirect_to root_path
    end
end

private

	def url_params
		params.require('url').permit(:link)
	end

def preview
    @url = Url.find_by hash_code: params[:code]
    unless @url
      redirect_to root_path
  	end
end
end
