class QuizzesController < ApplicationController
  require 'json'
  require "rubygems"

  before_action :set_quiz, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_student!, only: [:index]
  before_action :authenticate_student_or_instructor! , only: [:prev_quizzes,:show]
  before_action :authenticate_instructor! , only: [:student_statistics,:quiz_statistics]
  # GET /quizzes
  # GET /quizzes.json
  def prev_quizzes
     subject = Subject.find_by_course_code(params[:course_code])
     if subject.nil?
      render :template=>"sessions/delete.json.jbuilder",locals:{message: "No previous quizzes"} ,
      :success => true, :status=> :ok, :formats => [:json]
     else
     quizzes =  subject.quizzes.previous_quizzes
     render :template=>"quizzes/prev_quizzes.json.jbuilder",locals:{quizzes: quizzes}, 
      :success => true, :status=> :ok, :formats => [:json]
    end
  end

  def student_statistics
   student = Student.find_by_seat_number(params[:seat_number])
    render :template=>"quizzes/student_statistics.json.jbuilder",
    locals:{quizzes: student.quizzes.previous_quizzes , student: student}, 
      :success => true, :status=> :ok, :formats => [:json]
  end

  def quiz_statistics
      
      @quizzes1=StudentQuiz.where(quiz_id: params["quiz_id"])
      @total_students=@quizzes1.count
      @full_mark=Quiz.find_by(id: params["quiz_id"]).quiz_mark

      @A_students = @quizzes1.where("student_quiz_mark > ?", 0.85*@full_mark ).count
      @B_students = @quizzes1.where("student_quiz_mark > :l AND student_quiz_mark < :h",{l: 0.75*@full_mark, h: 0.85*@full_mark}).count
      @C_students = @quizzes1.where("student_quiz_mark > :l AND student_quiz_mark < :h",{l: 0.65*@full_mark, h: 0.75*@full_mark}).count
      @D_students = @quizzes1.where("student_quiz_mark > :l AND student_quiz_mark < :h",{l: 0.50*@full_mark, h: 0.65*@full_mark}).count
      @F_students = @total_students - @A_students - @B_students - @C_students - @D_students

      @stats = {a: @A_students, b: @b_students, c: @C_students , d: @D_students, e: @F_students}

      respond_to do |format|
        format.json {render json: @stats , status: :ok , success: true }
      end

  end


  def index
    @quizzes = Quiz.all
  end

  # GET /quizzes/1
  # GET /quizzes/1.json
  def show
    if  (student_signed_in? and current_student.quizzes.include?(@quiz) )#and 
     # @quiz.time_to_be_published <= Time.now) or (instructor_signed_in? and 
     # current_instructor.quizzes.include?(@quiz))
      render :template=>"quizzes/quiz.json.jbuilder", :success => true, :status=> :ok,
      :formats => [:json]
    else
      render :template=>"quizzes/show.json.jbuilder", :success => false, :status=> :unauthorized,
      :formats => [:json]
    end
  end

  # GET /quizzes/new
  def new
    @quiz = Quiz.new
  end

  # GET /quizzes/1/edit
  def edit
  end

  # POST /quizzes
  # POST /quizzes.json

  def create
      @subject1 = Subject.find_by_course_code(params["course_code"])
            
      @quiz1 = Quiz.create(quiz_params)
      @quiz1.instructor_id = current_instructor.id
      @quiz1.subject_id = @subject1.id

             
      params["mcqs"].each do |mcq1|
                
                  @mcq9 = Mcq.new

                  @mcq9.answer = mcq1["answer"]
                  @mcq9.choice1 =  mcq1["choice1"]
                  @mcq9.choice2 = mcq1["choice2"]
                  @mcq9.choice3 = mcq1["choice3"]
                  @mcq9.choice4 = mcq1["choice4"]
                  @mcq9.question_mark = mcq1["question_mark"]
                  @mcq9.question = mcq1["question"]
                  @mcq9.quiz_id = @quiz1.id
                 
                  @mcq9.save!

         end  
    @quiz1.set_quiz_full_mark
    @quiz1.assign_to_students


      respond_to do |format|
        format.json {render json:@subject1 , status: :ok , success: true }
      end
    end


  # PATCH/PUT /quizzes/1
  # PATCH/PUT /quizzes/1.json 
  def update
    respond_to do |format|
      if @quiz.update(quiz_params)
        format.html { redirect_to @quiz, notice: 'Quiz was successfully updated.' }
        format.json { render :show, status: :ok, location: @quiz }
      else
        format.html { render :edit }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quizzes/1
  # DELETE /quizzes/1.json
  def destroy
    @quiz.destroy
    respond_to do |format|
      format.html { redirect_to quizzes_url, notice: 'Quiz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def quiz_params
        params.require(:quiz).permit(:quiz_title, :duration,:time_to_be_published)
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quiz_params
      params[:quiz]
    end

    def mcq_params
    params.respond_to?(:permit) ?
        params.require(:mcq).permit(:mcqs => [ :name ]) :
        params[:picture].slice(:identifier => [ :name ]) rescue nil
    end

end
