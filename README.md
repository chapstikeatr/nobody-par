The nbody-par takes 6 args

an integer N to specify N random particles or a tsv file to load a state or the word planet to get the solar system
dt being an amount of time change between each state (int)
Steps which is how many times you simulate (int)
dump_every Which allows us to specify when to dump the state into an output (int)
nbthreads which is an int that tells the function how many threads that our parallel for loops will be able to use (int)
and output which tells the function where to dump the output. (string)

nbody <N|input.tsv> <dt> <steps> <dump_every> <nbthreads>[output.tsv]

to compile run make

to clean run make clean

the same goes for sequential execept we dont use the nbthreads arg

also to make the file use make nbody

When benched we get this time:

Time to crawl: 403.139s Number of threads: 4[Planets]
Time to crawl: 919.104s Number of threads: 8[Planets]
Time to crawl: 1445s Number of threads: 12[Planets]

Time to crawl: 1.3483s Number of threads: 4[100 random particles]
Time to crawl: 2.40038s Number of threads: 8[100 random particles]
Time to crawl: 3.44781s Number of threads: 12[100 random particles]

Time to crawl: 51.56s Number of threads: 4[1000 random particles]
Time to crawl: 52.5915s Number of threads: 8[1000 random particles]
Time to crawl: 53.691s Number of threads: 12[1000 random particles]

Time to crawl: 3.46871s Number of threads: 1 (seq) [Planets]
Time to crawl: 0.708414s Number of threads: 1 (seq) [100 random particles]
Time to crawl: 70.4257s Number of threads: 1 (seq) [1000 random particles]

We can see from here that we get slow down not speed up from our parallel implementation in smaller problems but as we increase
the problems in size we get more and more speedup with there being a 20 sec speed up for our 1000 random particle sample
