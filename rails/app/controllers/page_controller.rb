class PageController < ApplicationController

  def with_delay
    @seconds = params[:seconds]
    sleep(@seconds.to_i) if @seconds
  end

end
