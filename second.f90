PROGRAM sine_expansion

   USE series_routines, ONLY : expand_sine
   USE common_data

   IMPLICIT NONE

   real(16), DIMENSION(20) :: x, series
   INTEGER :: i

   DO i=1,20 !*** Define the range of x values to use
      x(i)=TWO_PI*(i-1)/19D0
   END DO

   series=expand_sine(x) !**** sin(x) up to five terms
   !**** Prints the results to the screen
   PRINT'(2e12.4)', (x(i), series(i), i = 1, 20)

   print *,D2R, R2D, E


END PROGRAM sine_expansion
