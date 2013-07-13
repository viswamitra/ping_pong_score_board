class Game < ActiveRecord::Base

  def update_counter(message)
    p "in update_counter with message =#{message}"
    increase_red_count if message == "red"
    increase_green_count if message == "green"
    reset if message == "reset"
  end

  def increase_red_count
      p 'in here'
      self.red_count = self.red_count + 1
      p "-----> #{self.red_count}"
      self.red_count
      self.save
    end

    def increase_green_count
      self.green_count = self.green_count + 1
      self.green_count
      self.save
    end

    def reset
      self.red_count = 0
      self.green_count = 0
      self.save
    end
end