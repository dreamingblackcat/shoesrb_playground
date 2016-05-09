Shoes.app do
  stack "width" => 150 do
    para "Please Enter You Birth Year"
  end
  @line = edit_line
  @button = button "Calculate Age"
  @button.click do
    alert "Your age is now #{2016 - @line.text.to_i }"
  end
end