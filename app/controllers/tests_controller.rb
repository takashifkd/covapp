class TestsController < ApplicationController
  # def import
  #   # fileはtmpに自動で一時保存される
  #   PCR.import(params[:dete])
  #   redirect_to tests_url
  # end


  # def index
  # end

  def index
    @pcr = Test.all.order(:date)
  end

end
