class CoursesController < ApplicationController
	def index
		@courses = Course.all	
	end

	def show
		@course = Course.find(params[:id])	
	end

	private

    def current_course
        @current_course ||= Course.find(params[:id])
    end
end
