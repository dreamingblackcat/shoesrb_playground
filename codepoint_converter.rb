

APP_WIDTH  = 1024
APP_HEIGHT = 600
Shoes.app :width => APP_WIDTH, :height => APP_HEIGHT do
  @text_box = nil
  @codepoint_box = nil
  @convert_button = nil


  def convert_codepoints(str)
    str.to_s.force_encoding("UTF-8")
    str.codepoints.map { |s| '\u' + s.to_s(16) }.join("")
  end

  stack :width => APP_WIDTH, :margin => 6, :height => APP_HEIGHT do
    @section_width = (APP_WIDTH / 2) - 6
    para "Codepoint Converter"
    flow do
      stack :width => @section_width, :margin => 25 do
        para "Unicode"
        @text_box = edit_box :width => @section_width - 50, :height => APP_HEIGHT - 172, :scroll => true
      end
      stack :width => @section_width, :margin => 25 do
        para "Codepoints"
        @codepoint_box = edit_box :width => @section_width - 50, :height => APP_HEIGHT - 172, :scroll => true
      end
    end
  end  

  @text_box.change do |btn|
    uni_text = @text_box.text
    @codepoint_box.text = convert_codepoints uni_text
  end

end