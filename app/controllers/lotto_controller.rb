class LottoController < ApplicationController
    def pick
        $draw = (1...45).to_a.sample(6).sort
        $win = (1...45).to_a.sample(6).sort
        redirect_to :root #새로고침
    end
  
    def check
        $tmp = 0
        $win.each do |a| 
            $draw.each do |b|
                if a==b
                    $tmp = $tmp + 1
                else 
                    nil
                end
            end
        end
        redirect_to :root
    end
    
end