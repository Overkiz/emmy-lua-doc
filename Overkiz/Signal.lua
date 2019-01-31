local Signal = {}

--- interrupt
Signal.SIGINT = 2

--- software termination signal from kill
Signal.SIGTERM = 15

--- user defined signal 1
Signal.SIGUSR1 = 30

--- user defined signal 2
Signal.SIGUSR2 = 31

--- Subscribe to a signal
--- @param signal number
--- @param handler fun()
function Signal.subscribe(signal, handler) end

--- Unsubscribe from a signal
--- @param signal number
--- @param handler fun()
function Signal.unsubscribe(signal, handler) end

return Signal
