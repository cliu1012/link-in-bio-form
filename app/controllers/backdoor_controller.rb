class BackdoorController < ApplicationController
  def add_item_form
    render({ :template => "backdoor_templates/add_item_form" })
  end

  def add_item
    new_item = Item.new

    new_item.link_url = params.fetch("item_url")
    new_item.link_description = params.fetch("item_description")
    new_item.thumbnail_url = params.fetch("thumbnail_url")

    new_item.save

    redirect_to("/")
  end
end
