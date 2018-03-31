package fr.imag.air.aj;

public aspect DurationAspect {
    private long startTime;
    private long count = 0;
    private static long globalDuration=0;
    private static long globalCount = 0;
    
    before() : execution(public void *.run()){
        startTime=System.nanoTime();
        count++;
        globalCount++;
    }

    after() : execution(public void *.run()){
        long endTime=System.nanoTime();
        long delta = endTime-startTime;
        globalDuration +=delta;
        System.out.println("Call #" + count + ": Duration=" + delta/1000000);
    }

    before() : execution(public void SimpleThreads.main(..)){
    	System.out.println("START STATISTICS ");
    }

    after() : execution(public void SimpleThreads.main(..)){
    	System.out.println("END STATISTICS ");
        System.out.println("CallNumber: " + globalCount + " : AvgDuration=" + (globalDuration/(globalCount*1000000)));
    }
}


