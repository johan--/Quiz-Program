class StudentsController < UsersController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    # @students = Student.all
        #password = "passIns1"
  #email = "cherifSalama@gmail.com"
  #logindata=params
  email = params[:gg]
  password = params[:hh]


    #email = logindata[:email]
    #password= logindata[:password]
    #puts logindata
    # JSON to get name and password
   #puts "heyyyyyyy!! #{params} bsssssss"

  if student1 = Student.find_by_email(email) and student1.password == password

      @display =  " student login "

  elsif instructor1 = Instructor.find_by_email(email)  #and instructor1.password == password
            
            
      puts "nhasjfhasjfasgfjagsfkjgajsgfkjagsfkjagdsgfjgadsjkgkjsdajkgkjasdgjsakjg"
      @display =  " instructor login "

            respond_to do |format|
                format.json {render json: [instructor1,  "this is an instructor"] }
      end


  else
    @display =  "wrong email or password"
          respond_to do |format|
                format.json {render json: "wrong input maaaaaaaan"}
      end
  end

  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params[:student]
    end
end
