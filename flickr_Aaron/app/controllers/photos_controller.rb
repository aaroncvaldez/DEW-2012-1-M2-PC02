class PhotosController < ApplicationController
require 'flickraw'

def index
render
end

def show
FlickRaw.api_key="681b7acb1c6aacdb4897f2bf1712028f"
FlickRaw.shared_secret="b14ac2fd13f84040"
url=params[:url]
numero=params[:numero]
@photos = flickr.photos.search(:tags =>url, :per_page => numero)

end

end
