module Node
  class Node < ApplicationRecord

  has_one :led, dependent: :destroy
  accepts_nested_attributes_for :led

  has_one :button, dependent: :destroy
  accepts_nested_attributes_for :button

  has_one :neo_pixel_stick_eight, dependent: :destroy
  accepts_nested_attributes_for :neo_pixel_stick_eight

  def rainbow
    array = {
      0 => [148, 0, 211],
      1 => [75, 0, 130],
      2 => [0, 0, 255],
      3 => [0, 255, 0],
      4 => [255, 255, 0],
      5 => [255, 127, 0],
      6 => [255,0,0]
      }
    (0..50).each do |j|
      x = j%7
      y = j%8
      self.neo_pixel_stick_eight.led_index = y
      self.neo_pixel_stick_eight.led_color = ((array[x][0] * 256**2) + (array[x][1] * 256) + (array[x][2]))
      self.save
      sleep(0.1)
    end
  end

  def bounce
   array = {
     0 => [0, 255, 0],
     1 => [0, 0, 255],
     2 => [0, 255, 0],
     3 => [0, 0, 255],
     4 => [0, 255, 0],
     5 => [0, 0, 255],
     6 => [0, 255, 0],
     7 => [0, 0, 255]
     }

    (0..239).each do |j|
      self.neo_pixel_stick_eight.led_color = ((array[j][0] * 256**2) + (array[j][1] * 256) + (array[j][2]))
      self.neo_pixel_stick_eight.led_index = j % 7
      self.save
      sleep(0.1)
    end

    (239).downto(0).each do |j|
      self.neo_pixel_stick_eight.led_color = ((array[j][0] * 256**2) + (array[j][1] * 256) + (array[j][2]))
      self.neo_pixel_stick_eight.led_index = j % 7
      self.save
      sleep(0.1)
    end
  end

  def convert_index_to_interface_name(num)
    # handle negative numbers and those above 239
    interface = "led_" << num.to_s
    return interface

    # interfaces led_0 through led_239; each will take an integer color value
  end

  end
end