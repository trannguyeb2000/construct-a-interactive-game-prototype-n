require 'tk'

class GameNotifier
  def initialize
    @root = TkRoot.new { title "Game Notifier" }
    @root.geometry("300x200")
    @label = TkLabel.new(@root) { text "Waiting for game updates..." }
    @label.pack
    @counter = 0
  end

  def notify_game_update
    @counter += 1
    @label.text = "New game update! (#{@counter} notifications)"
  end

  def run
    @root.mainloop
  end
end

# Test case
notifier = GameNotifier.new
notifier.run

# Simulate game updates
10.times do
  notifier.notify_game_update
  sleep 1
end