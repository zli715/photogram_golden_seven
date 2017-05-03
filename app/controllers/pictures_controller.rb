class PicturesController < ApplicationController

  def new_form
    render("pic_templates/new_form.html.erb")
  end

  def create_row

    p = Photo.new

    p.caption = params["caption"]
    p.source = params["source"]
    p.save

    @current_count = Photo.count

    render("pic_templates/create_row.html.erb")
  end

  def index
    @list_of_photos = Photo.all
    render("pic_templates/index.html.erb")
  end

  def show
    # "/photos/:the_id"

    @my_photo = Photo.find(params["the_id"])

    # @caption = p.caption
    # @source = p.source
    # @timestamp = p.created_at
    # think about the logic - this can be done in views rather than separate variables here

    render("pic_templates/show.html.erb")
  end

  def edit_form

    @my_photo = Photo.find(params["la_id"])
    render("pic_templates/edit_form.html.erb")
  end

  def update_row
      @my_photo = Photo.find(params["le_id"])
    render("pic_templates/update_row.html.erb")
  end

  def destroy_row
    render("pic_templates/destroy_row.html.erb")
  end

end
