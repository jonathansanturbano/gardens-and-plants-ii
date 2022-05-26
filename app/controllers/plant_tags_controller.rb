class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new # for simple_form
  end

  def create
    # params = { "plant_tag": {"tag_id": "4"}, "plant_id": "4"}
    @plant = Plant.find(params[:plant_id])
    @tags = Tag.where(id: [params[:plant_tag][:tag_id]])
    @tags.each do |tag|
      plant_tag = PlantTag.new(plant: @plant, tag: tag)
      plant_tag.save
    end
    redirect_to garden_path(@plant.garden)
  end
end
