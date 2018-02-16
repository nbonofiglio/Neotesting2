class StaticPatternsController < ApplicationController
  before_action :set_static_pattern, only: [:show, :edit, :update, :destroy]

  # GET /static_patterns
  # GET /static_patterns.json
  def index
    @static_patterns = StaticPattern.all
  end

  # GET /static_patterns/1
  # GET /static_patterns/1.json
  def show
  end

  # GET /static_patterns/new
  def new
    @static_pattern = StaticPattern.new
    if params.has_key?(:source_cord_id)
      cord = Cord::Cord.find(params[:source_cord_id])
      @static_pattern.size = cord.neo_pixel.pixels
      (0..239).each do |i|
        value = cord.neo_pixel.send("pixel_" + i.to_s)
        @static_pattern.send("pixel_" + i.to_s + "=", value)
      end
    end

  end

  # GET /static_patterns/1/edit
  def edit
  end

  # POST /static_patterns
  # POST /static_patterns.json
  def create
    @static_pattern = StaticPattern.new(static_pattern_params)

    respond_to do |format|
      if @static_pattern.save
        format.html { redirect_to @static_pattern, notice: 'New pattern was successfully created.' }
        format.json { render :show, status: :created, location: @static_pattern }
      else
        format.html { render :new }
        format.json { render json: @static_pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /static_patterns/1
  # PATCH/PUT /static_patterns/1.json
  def update
    respond_to do |format|
      if @static_pattern.update(static_pattern_params)
        format.html { redirect_to @static_pattern, notice: 'Saved pattern was successfully updated.' }
        format.json { render :show, status: :ok, location: @static_pattern }
      else
        format.html { render :edit }
        format.json { render json: @static_pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /static_patterns/1
  # DELETE /static_patterns/1.json
  def destroy
    @static_pattern.destroy
    respond_to do |format|
      format.html { redirect_to static_patterns_url, notice: 'Saved pattern was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_static_pattern
      @static_pattern = StaticPattern.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def static_pattern_params
      params.fetch(:static_pattern, {}).permit(:user_id, :name, :size, :source_cord_id, :pixel_0, :pixel_1, :pixel_2, :pixel_3, :pixel_4, :pixel_5, :pixel_6, :pixel_7, :pixel_8, :pixel_9, :pixel_10, :pixel_11, :pixel_12, :pixel_13, :pixel_14, :pixel_15, :pixel_16, :pixel_17, :pixel_18, :pixel_19, :pixel_20, :pixel_21, :pixel_22, :pixel_23, :pixel_24, :pixel_25, :pixel_26, :pixel_27, :pixel_28, :pixel_29, :pixel_30, :pixel_31, :pixel_32, :pixel_33, :pixel_34, :pixel_35, :pixel_36, :pixel_37, :pixel_38, :pixel_39, :pixel_40, :pixel_41, :pixel_42, :pixel_43, :pixel_44, :pixel_45, :pixel_46, :pixel_47, :pixel_48, :pixel_49, :pixel_50, :pixel_51, :pixel_52, :pixel_53, :pixel_54, :pixel_55, :pixel_56, :pixel_57, :pixel_58, :pixel_59, :pixel_60, :pixel_61, :pixel_62, :pixel_63, :pixel_64, :pixel_65, :pixel_66, :pixel_67, :pixel_68, :pixel_69, :pixel_70, :pixel_71, :pixel_72, :pixel_73, :pixel_74, :pixel_75, :pixel_76, :pixel_77, :pixel_78, :pixel_79, :pixel_80, :pixel_81, :pixel_82, :pixel_83, :pixel_84, :pixel_85, :pixel_86, :pixel_87, :pixel_88, :pixel_89, :pixel_90, :pixel_91, :pixel_92, :pixel_93, :pixel_94, :pixel_95, :pixel_96, :pixel_97, :pixel_98, :pixel_99, :pixel_100, :pixel_101, :pixel_102, :pixel_103, :pixel_104, :pixel_105, :pixel_106, :pixel_107, :pixel_108, :pixel_109, :pixel_110, :pixel_111, :pixel_112, :pixel_113, :pixel_114, :pixel_115, :pixel_116, :pixel_117, :pixel_118, :pixel_119, :pixel_120, :pixel_121, :pixel_122, :pixel_123, :pixel_124, :pixel_125, :pixel_126, :pixel_127, :pixel_128, :pixel_129, :pixel_130, :pixel_131, :pixel_132, :pixel_133, :pixel_134, :pixel_135, :pixel_136, :pixel_137, :pixel_138, :pixel_139, :pixel_140, :pixel_141, :pixel_142, :pixel_143, :pixel_144, :pixel_145, :pixel_146, :pixel_147, :pixel_148, :pixel_149, :pixel_150, :pixel_151, :pixel_152, :pixel_153, :pixel_154, :pixel_155, :pixel_156, :pixel_157, :pixel_158, :pixel_159, :pixel_160, :pixel_161, :pixel_162, :pixel_163, :pixel_164, :pixel_165, :pixel_166, :pixel_167, :pixel_168, :pixel_169, :pixel_170, :pixel_171, :pixel_172, :pixel_173, :pixel_174, :pixel_175, :pixel_176, :pixel_177, :pixel_178, :pixel_179, :pixel_180, :pixel_181, :pixel_182, :pixel_183, :pixel_184, :pixel_185, :pixel_186, :pixel_187, :pixel_188, :pixel_189, :pixel_190, :pixel_191, :pixel_192, :pixel_193, :pixel_194, :pixel_195, :pixel_196, :pixel_197, :pixel_198, :pixel_199, :pixel_200, :pixel_201, :pixel_202, :pixel_203, :pixel_204, :pixel_205, :pixel_206, :pixel_207, :pixel_208, :pixel_209, :pixel_210, :pixel_211, :pixel_212, :pixel_213, :pixel_214, :pixel_215, :pixel_216, :pixel_217, :pixel_218, :pixel_219, :pixel_220, :pixel_221, :pixel_222, :pixel_223, :pixel_224, :pixel_225, :pixel_226, :pixel_227, :pixel_228, :pixel_229, :pixel_230, :pixel_231, :pixel_232, :pixel_233, :pixel_234, :pixel_235, :pixel_236, :pixel_237, :pixel_238, :pixel_239, :pixel_240, :pixel_241, :pixel_242, :pixel_243, :pixel_244, :pixel_245, :pixel_246, :pixel_247, :pixel_248, :pixel_249, :pixel_250, :pixel_251, :pixel_252, :pixel_253, :pixel_254, :pixel_255)
    end
end
