class FailedController < ApplicationController

  cattr_accessor :resques, instance_writer: false do
    RESQUES
  end

  def index
    start = params[:start].to_i
    count = params[:count].try(:to_i) || :all
    @jobs_failed = resques.find(params[:resque_id]).jobs_failed(start,count)
  end

end