class AtOnceController < ApplicationController

  def atonce
    begin
      params.permit!
      eintrags = params["at_once"]
      eintrags.each do |date, dayeintrs|
        dayeintrs.each do |kostentr, eintr|
          next if kostentr == "all"
          duration = eintr[0]
          comment = eintr[1]
          #
          # puts kostentr, date, duration, comment
          # gives
          #  5151000
          #  20171025
          #  30524.665
          #  Problem bei...
          kosttr = KostenTraeger.find_by(code: kostentr)
          if kosttr.nil?
            render json: {status: 400, error: "No such Kostentraeger: " + kostentr}
            return
          end

          date = Date.parse(date)

          

          eintr = Eintrag.where(kosten_traeger: kosttr, date: date).first


          if eintr.nil?
            eintr = Eintrag.create!(kosten_traeger: kosttr, date: date, user: User.first)
          end

          eintr.duration = duration
          eintr.comment = comment

          eintr.save!


        end
      end
      render json: {status: 200}
    rescue => e
      logger.error "Error when processing JSON from the JS app:"
      logger.error e.message
      render json: {status: 400, error: "Badly formatted request body"}
    end
  end

end
