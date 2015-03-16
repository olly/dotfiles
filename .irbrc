require 'irb/completion'

begin
  require 'irb/ext/save-history'
rescue LoadError
  warn "IRB: Save history support unavailable."
end

IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history" 
IRB.conf[:PROMPT_MODE]  = :SIMPLE

