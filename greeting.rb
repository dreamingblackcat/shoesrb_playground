Shoes.app do
  @name_line = edit_line
  @click_me = button "Click Me!"
  @click_me.click { alert("Hello #{@name_line.text}") }
end