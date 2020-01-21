class Order < ApplicationRecord
    before_save :default_values

    def default_values
        self.update_on ||= Time.now.strftime("%m/%d/%Y")
    end
end
