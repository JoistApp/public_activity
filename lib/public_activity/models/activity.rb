module PublicActivity
  class Activity < inherit_orm("Activity")
    after_create :demodulize_record

    def :demodulize_record
      puts "++++++++++++++++++ DEMODULIZE RECORD +++++++++++++++"
    end
  end
end