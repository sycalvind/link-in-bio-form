class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end
  def add
    render({ :template => "item_templates/new" })
  end
  def update
    url = params.fetch("link_url")
    description = params.fetch("link_description")
    thumbnail = params.fetch("thumbnail_url")
    x = Item.new
    x.link_url = url
    x.link_description = description
    x.thumbnail_url = thumbnail
    x.save
    redirect_to("/")
  end
end
