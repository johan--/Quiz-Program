class StudentQuizzesController < ApplicationController
  before_action :set_student_quiz, only: [:show, :edit, :update, :destroy]

  # GET /student_quizzes
  # GET /student_quizzes.json
  def index
    @student_quizzes = StudentQuiz.all
  end

  # GET /student_quizzes/1
  # GET /student_quizzes/1.json
  def show
  end

  # GET /student_quizzes/new
  def new
    @student_quiz = StudentQuiz.new
  end

  # GET /student_quizzes/1/edit
  def edit
  end

  # POST /student_quizzes
  # POST /student_quizzes.json
  def create

    # grading

   # quiz_id1 is passed from the student mcq contoller #create
    mcqs1 = Mcq.where(quiz_id: quiz_id1)
    
    grade = 0

    mcqs1.each do |mcq1|
      if mcq1[:answer]==StudentMcq.where(student_id: current_student.id,
                                         mcq_id: mcq1[:mcq_id])
        grade = grade + mcq1[i][:question_mark]
      end
    end

    StudentQuiz.create(student_quiz_mark: grade, student_id: current_student.id, quiz_id: quiz_id1)


  end

    
  

  # PATCH/PUT /student_quizzes/1
  # PATCH/PUT /student_quizzes/1.json
  def update
    respond_to do |format|
      if @student_quiz.update(student_quiz_params)
        format.html { redirect_to @student_quiz, notice: 'Student quiz was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_quiz }
      else
        format.html { render :edit }
        format.json { render json: @student_quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_quizzes/1
  # DELETE /student_quizzes/1.json
  def destroy
    @student_quiz.destroy
    respond_to do |format|
      format.html { redirect_to student_quizzes_url, notice: 'Student quiz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_quiz
      @student_quiz = StudentQuiz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_quiz_params
      params[:student_quiz]
    end


end
