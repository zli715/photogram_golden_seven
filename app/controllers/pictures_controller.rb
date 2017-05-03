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

    redirect_to("http://localhost:3000/photos")
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
    p = Photo.find(params["le_id"])

    p.source = params[:source]
    p.caption = params[:caption]

    p.save

    @id = p.id

    redirect_to("/photos/#{@id}")
  end

  def destroy_row

    p = Photo.find(params[:da_id])
    p.destroy

    @remaining_count = Photo.count

    redirect_to("/photos")
  end

end
