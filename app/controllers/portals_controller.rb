class PortalsController < ApplicationController
  # GET ./portals/:id
  def show
    @source = NoaaData.new.source
  end
end
