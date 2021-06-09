set ns [new Simulator]

set f [open exp7.tr w]

$ns trace-all $f

set nf [open 1exp7.nam w]

$ns namtrace-all $nf

 

proc finish {} {

global ns nf f

$ns flush-trace

close $nf

close $f

exec nam 1exp7.nam &
#awk for delay


exit 0

}



#Create five nodes
set s1 [$ns node]
set s2 [$ns node]
set s3 [$ns node]
set g [$ns node]
set r [$ns node]

#colors

$ns color 1 Red
$ns color 2 Green
$ns color 3 blue



#Create links between the nodes
$ns duplex-link $s1 $g 2Mb 8ms DropTail
$ns duplex-link $s2 $g 2Mb 7ms DropTail
$ns duplex-link $s3 $g 2Mb 11ms DropTail
$ns duplex-link $g $r 2Mb 5ms DropTail





#Setup a UDP connection between nodes s1 and r
set udp1 [new Agent/UDP]
$ns attach-agent $s1 $udp1
set cbr1 [new Application/Traffic/CBR]
$cbr1 attach-agent $udp1
$udp1 set class_ 2
$udp1 set segmentSize- 1500
set null0 [new Agent/Null]
$ns attach-agent $r $null0
$ns connect $udp1 $null0
$udp1 set fid_ 1

#Setup a UDP connection between nodes s2 and r
set udp2 [new Agent/UDP]
$ns attach-agent $s2 $udp2
set cbr2 [new Application/Traffic/CBR]
$cbr2 attach-agent $udp2
$udp2 set class_ 2
$udp2 set segmentSize- 1500
set null1 [new Agent/Null]
$ns attach-agent $r $null1
$ns connect $udp2 $null1
$udp2 set fid_ 2


#Setup a UDP connection between nodes s3 and r
set udp3 [new Agent/UDP]
$ns attach-agent $s3 $udp3
set cbr3 [new Application/Traffic/CBR]
$cbr3 attach-agent $udp3
$udp3 set class_ 2
$udp3 set segmentSize- 1500
set null2 [new Agent/Null]
$ns attach-agent $r $null2
$ns connect $udp3 $null2
$udp3 set fid_ 3



#schedule events for the ftp  agents
$ns at 2.0 "$cbr1 start"
$ns at 8.0 "$cbr1 stop"
#schedule events for the ftp  agents
$ns at 2.0 "$cbr2 start"
$ns at 8.0 "$cbr2 stop"

#schedule events for the ftp  agents
$ns at 2.0 "$cbr3 start"
$ns at 8.0 "$cbr3 stop"




#Call the finish procedure after 5 seconds of simulation time
$ns at 30.0 "finish"


#Run the simulation
$ns run

































