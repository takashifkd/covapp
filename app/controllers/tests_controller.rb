class TestsController < ApplicationController
  def import
    # fileはtmpに自動で一時保存される
    PCR.import(params[:dete])
    redirect_to tests_url
  end
end
