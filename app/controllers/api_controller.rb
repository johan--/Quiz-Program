class ApiController < ApplicationController
  before_filter :authenticate_student!
  respond_to :json
end