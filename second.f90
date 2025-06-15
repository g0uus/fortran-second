PROGRAM sine_expansion
   USE series_routines, ONLY : expand_sine
   IMPLICIT NONE
   REAL, PARAMETER :: pi = 3.14159265359
   REAL, DIMENSION(20) :: x, series
   INTEGER :: i
   DO i=1,20 !*** Define the range of x values to use
      x(i)=2.0*pi*(i-1)/ 19
   END DO
   series=expand_sine(x) !**** sin(x) up to five terms
   !**** Prints the results to the screen
   PRINT'(2e12.4)', (x(i), series(i), i = 1, 20)
END PROGRAM sine_expansion
