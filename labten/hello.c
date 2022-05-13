

#include <stdio.h>
#include <omp.h>

int main ()
{
  const int maxNumThreads = omp_get_max_threads();

    printf("Maximum number of threads for this machine: %i\n", maxNumThreads);

    printf("Not yet started a parallel Section: the number of threads is %i\n", omp_get_num_threads());

    printf("Setting the maximum number of threads...\n");
    omp_set_num_threads(maxNumThreads);

    printf("Once again, not yet started a parallel Section: the number of threads is still %i\n", omp_get_num_threads());

    printf("Starting a parallel Section...\n");
    // #pragma omp parallel for 
    // for (int i = 0; i < maxNumThreads; i++) {
    //     int tid = omp_get_thread_num();
    //     printf("This is thread %i announcing that the number of launched threads is %i\n", tid, omp_get_num_threads());
    // }


  #pragma omp parallel
  {
    int thread_ID = omp_get_thread_num ();
    printf (" hello world %d\n", thread_ID);
  }
  return 0;
}

// If you run ./hello a couple of times, you should see that the numbers are not always in numerical order and will most likely vary across runs. 
// This is because within the parallel region, OpenMP does the code in parallel and as a result does not enforce an ordering across all the threads.
//  It is also vital to note that the variable thread_ID is local to a specific thread and not shared across all threads. 
// In general with OpenMP, variables declared inside the parallel block will be private to each thread, but variables declared outside will be global and accessible by all the threads.