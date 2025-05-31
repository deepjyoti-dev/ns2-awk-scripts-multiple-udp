✅ Summary of the Simulation
Nodes Created:

Senders: s1, s2, s3

Intermediate: g

Receiver: r

Topology:

rust
Copy
Edit
s1 \
s2 ---> g ---> r
s3 /
Links:

All links are 2Mb bandwidth with varied delays:

s1-g: 8ms

s2-g: 7ms

s3-g: 11ms

g-r: 5ms

Queuing discipline: DropTail

Traffic:

All sources use UDP + CBR.

Traffic starts at 2s and ends at 8s.

All traffic ends before the simulation stops at 30s.

Tracing:

Trace file: exp7.tr

NAM file: 1exp7.nam

Finish Procedure:

Traces flushed and files closed.

