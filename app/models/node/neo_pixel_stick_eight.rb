module Node
  class NeoPixelStickEight < ApplicationRecord
    # The method(s) that correspond to device interfaces are: led_color led_index 
    
    has_many :neo_pixel_stick_eight_led_color_logs, dependent: :destroy
    
    has_many :neo_pixel_stick_eight_led_index_logs, dependent: :destroy
    
    belongs_to :node
    attr_accessor :skip_extract
    after_commit :extract, unless: :skip_extract
    after_commit :channel_push
    
    validates :led_index, inclusion: { in: 0..7,
    message: "%{value} is not within the range 0..7" }
  
    
    def sync
      Apiotics.sync(self)
    end
    
    # def synchronize
    #   for :neo_pixel_stick_eight :led_index.all do |update|
        ##update.led_color.all = "255"
        ##
    private
  
    def extract
      Apiotics::Extract.send(self)
    end
    
    def channel_push
      if Apiotics.configuration.push == true
        interfaces = Hash.new
        puts self.previous_changes
        self.previous_changes.each do |k,v|
          if Apiotics::Extract.is_target(self, k)
            interfaces[k] = v[1].to_s
          end
        end
        interfaces.each do |k,v|
          ActionCable.server.broadcast "#{self.class.parent.to_s.underscore.downcase.gsub(" ", "_")}_channel",
            apiotics_instance: self.node.apiotics_instance,
            worker_name: self.class.parent.to_s.underscore.downcase.gsub(" ", "_"),
            model_name: self.class.name.demodulize.to_s.underscore.downcase.gsub(" ", "_"),
            interface: k,
            value: v
        end
      end
    end
  
  end
end