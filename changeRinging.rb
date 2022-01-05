use_synth :pretty_bell
bells = [:B2, :C3, :D3, :E3, :F3, :G3]
bells1 = [:B2, :C3, :D3, :E3, :F3, :G3]

def playThrough(bells)
  i = 0
  while i < bells.size
    play bells[i]
    sleep 1
    i += 1
  end
end

def fullSwap(bells)
  i = 0
  while i < bells.size-1
    bells[i],bells[i+1] = bells[i+1],bells[i]
    i += 2
  end
  puts bells
end

def internSwap(bells)
  i = 1
  while i<bells.size-2
    bells[i],bells[i+1]=bells[i+1],bells[i]
    i+=2
  end
  puts bells
end

live_loop :plainHunt do
  playThrough(bells)
  sleep 1
  fullSwap(bells)
  playThrough(bells)
  sleep 1
  internSwap(bells)
  if bells == bells1
    use_synth :beep
    play :A4, sustain: 2
    sleep 3
  end
end