module PublicActivity
  class Activity < inherit_orm("Activity")
    after_create :demodulize_record

    def demodulize_record
      self.trackable_type ||= self.trackable_type.demodulize
      self.owner_type ||= self.owner_type.demodulize
      self.key = self.key.gsub(/v\d+_/,'') #e.g. convert v3_invoice to invoice
      self.save
    end
  end
end