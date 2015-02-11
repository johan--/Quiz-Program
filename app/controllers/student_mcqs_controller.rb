class StudentMcqsController < ApplicationController
  before_action :set_student_mcq, only: [:show, :edit, :update, :destroy]

  # GET /student_mcqs
  # GET /student_mcqs.json
  def index
    @student_mcqs = StudentMcq.all
  end

  # GET /student_mcqs/1
  # GET /student_mcqs/1.json
  def show
  end

  # GET /student_mcqs/new
  def new
    @student_mcq = StudentMcq.new
  end

  # GET /student_mcqs/1/edit
  def edit
  end

  # POST /student_mcqs
  # POST /student_mcqs.json
  # BOSSSS HENAAAAAAAAAAAAAAAAAAA!!!!!!!!!!!!!!!!!!!!!!!!!
  def create
    quiz_id1 = current_student_most_recent_quiz.id #m3rfsh most recent quiz di tetgab ezay 
    #mcq_id1 = Mcq.where(quiz_id: quiz_id1).id
    mcqs1 = Mcq.where(quiz_id: quiz_id1)

    params[:answers].each_index do |i|   
      @stu_mcq = StudentMcq.create(student_answer: params[:answers][i],
                       mcq_id: mcqs1[i].id,
                       student_id: current_student.id)
      if @stu_mcq[:student_answer] == mcqs1[i][:answer]
        grade = grade + mcqs1[i][:question_mark]
      end
    end

     redirect_to controller: "StudentQuizzesController", action: "create", q{quiz_id: quiz_id1, g: grade}
  end

  # PATCH/PUT /student_mcqs/1
  # PATCH/PUT /student_mcqs/1.json
  def update
    respond_to do |format|
      if @student_mcq.update(student_mcq_params)
        format.html { redirect_to @student_mcq, notice: 'Student mcq was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_mcq }
      else
        format.html { render :edit }
        format.json { render json: @student_mcq.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_mcqs/1
  # DELETE /student_mcqs/1.json
  def destroy
    @student_mcq.destroy
    respond_to do |format|
      format.html { redirect_to student_mcqs_url, notice: 'Student mcq was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_mcq
      @student_mcq = StudentMcq.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_mcq_params
      params[:student_mcq]
    end
end
