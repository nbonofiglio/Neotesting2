module CommandsHelper

  def get_commands 
    @commands = ["all_on", "all_off", "pattern", "rainbow", "snake", "patterned_snake", "christmas", "moving_dots", "light_show", "middle_pulse", "game_of_life"]
    @commands.sort
  end

  def display_commands 
    stuff = Array.new
    get_commands.each do |c| 
      stuff << CommandView.new(self, c).html
    end
    self.safe_join(stuff)
  end

  class CommandView
    def initialize(view, command_name)
      @view = view
      @name = command_name
    end

    def html 
      content_tag :div, view.safe_join(controls), class: "command-form-params", id: @name
    end

    def controls 
      case @name 
      when "all_on" 
        [color_field_row("Color:", :on_color)]
      when "all_off"
        []
      when "rainbow"
        [num_field_row("Stripe width:", :stripe_width, 34)]
      when "pattern"
        [pattern_selector_row("Pattern:", :pattern)]
      when "snake"
        arr = [num_field_row("Number of loops:", :num_reps_snake, 100)]
        arr << num_field_row("Snake length:", :snake_length, 236)
        arr << color_field_row("Snake color:", :snake_color)
      when "patterned_snake"
        arr = [num_field_row("Number of loops:", :num_reps_psnake, 100)]
        arr << pattern_selector_row("Snake pattern:", :snake_pattern)
      when "christmas"
        [num_field_row("Number of repetitions:", :num_reps_xmas, 100)]
      when "moving_dots" 
        arr = [num_field_row("Number of repetitions:", :num_reps_dots, 100)]
        arr << color_field_row("First color:", :color1)
        arr << color_field_row("Second color:", :color2)
        arr << num_field_row("Distance between dots:", :distance, 50)
      when "light_show"
        []
      when "middle_pulse"
        arr = [num_field_row("Number of repetitions:", :num_reps_pulse, 100)]
        arr << color_field_row("Color:", :pulse_color)
      when "game_of_life"
        [label_row("custom params not ready yet")]
      else
        label_row("Command \"#{@name}\" is not ready yet")
      end
    end

# instance_variable_get(:@instance_variable)
    private
    attr_accessor :view
    delegate :instance_variable_get, :content_tag, :number_field_tag, :color_field_tag, :label_tag, :concat, :safe_join, :collection_select, to: :view

    def num_field_row(caption, param_name, max)
      input_row(caption, number_field_tag(param_name, nil, in: 1...max))
    end

    def color_field_row(caption, param_name)
      input_row(caption, color_field_tag(param_name))
    end

    def pattern_selector_row(caption, param_name)
      options = instance_variable_get(:@patterns)
      html = collection_select param_name, :id, options, :id, :name, include_blank: false
      input_row(caption, html)
    end

    def input_row(caption, input_field_html)
      content_tag :div, class: "row command_label" do 
        concat (content_tag :div, label_tag(caption),  class: "col-sm-2")
        concat (content_tag :div, input_field_html, class: "col-sm-1")
      end
    end

    def label_row(caption)
      content_tag :div, class: "row command_label" do 
        concat (content_tag :div, label_tag(caption),  class: "col-sm-2")
      end
    end

  end # class

end
