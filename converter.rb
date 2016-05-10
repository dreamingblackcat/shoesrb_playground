
APP_WIDTH  = 1024
APP_HEIGHT = 600
Shoes.app :width => APP_WIDTH, :height => APP_HEIGHT do
  stack :width => APP_WIDTH, :margin => 6, :height => APP_HEIGHT - 50 do
    flow do
      @section_width = (APP_WIDTH / 2) - 6
      stack :width => @section_width do
        para "Unicode"
        edit_box :width => 200
      end
      stack :width => @section_width do
        para "Zawgyi"
        edit_box :width => 200
      end
    end
    flow :margin => APP_WIDTH / 3 do
      stack :width => APP_WIDTH / 3 do
        button "Convert"
      end
    end
  end  
end