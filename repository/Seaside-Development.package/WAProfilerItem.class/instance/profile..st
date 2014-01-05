rendering
profile: aBlock
  [ 
  self startProfiling.
  ^ self runProfilerOn: aBlock ]
    ensure: [ self endProfiling ]