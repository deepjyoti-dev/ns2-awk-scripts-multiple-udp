📡 NS-3 Multi-Source UDP CBR Simulation (5 Nodes)

This NS-3 simulation models UDP CBR traffic from multiple sources through a gateway to a receiver. It demonstrates packet flow, trace generation, and visualization using NAM.

✅ Summary of the Simulation
Component	Details
Nodes Created	Senders: s1, s2, s3
Intermediate: g
Receiver: r
Topology	<pre>s1 \
s2 ---> g ---> r
s3 /</pre>
Links	All links 2 Mbps, varied delays:
s1-g: 8 ms
s2-g: 7 ms
s3-g: 11 ms
g-r: 5 ms
Queuing	DropTail
Traffic	UDP + CBR from all sources
Start: 2 s, End: 8 s
Simulation stops at 30 s
Tracing	Trace file: exp7.tr
NAM file: 1exp7.nam
Finish Procedure	Traces flushed and files closed
🔧 How to Run

Navigate to your NS-3 directory:

cd ~/ns-allinone-3.xx/ns-3.xx/


Save your simulation script as udp_multi_source.cc or udp_multi_source.py.

Build and run the simulation:

./waf --run "udp_multi_source"


Open NAM visualization:

nam 1exp7.nam

📊 Output / Analysis

Trace File (exp7.tr) provides:

Sent/received packets per source

Packet timestamps and delays

Queuing and drop information

NAM File (1exp7.nam) shows:

Node positions and multi-source topology

Real-time visualization of CBR packet flow from s1, s2, s3 to r

🧠 Notes

Link delays and CBR rates can be adjusted to study congestion and packet drops.

DropTail queuing may lead to packet loss under high traffic.

NAM helps visualize simultaneous flows from multiple sources.

🏷️ Tags

#ns3 #UDP #CBR #simulation #network #nam #trace #multi-source #5nodes #packetflow
