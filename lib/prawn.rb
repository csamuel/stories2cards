require "prawn"

class Prawn::Document
  
  CARD_WIDTH  = 72 * 5 # 5 inches
  CARD_HEIGHT = 72 * 3 # 3 inches
  
  def self.generate_cards(outfile, stories)
    generate(outfile, :page_layout => :landscape) do
      row = 2
      col = 0
  
      stories.each do |story|
        if row == 0
          start_new_page
          row = 2
          col = 0
        end
    
        draw_card(story, row, col)
    
        col += 1
    
        if col > 1
          col = 0
          row -= 1
        end
      end
    end
  end
  
  def margin_box(margin, &block)
    bounding_box [bounds.left + margin, bounds.top - margin],
      :width => bounds.width - (margin * 2), :height => bounds.height - (margin * 2),
      &block
  end
  
  def outline_box
    stroke_rectangle bounds.top_left, bounds.width, bounds.height
  end

  def draw_card(story, row, col)
    bounding_box [CARD_WIDTH * col, CARD_HEIGHT * row + ((bounds.height - (2*CARD_HEIGHT))/2)],
      :width => CARD_WIDTH, :height => CARD_HEIGHT do
        
      outline_box
    
      margin_box 8 do
        text story.id, :size => 12, :font => "Helvetica", :style => :italic
        
        margin_box 30 do
          text story.name, :size => 18, :align => :left, :font => "Helvetica"
        end
      end
    end
  end
  
end