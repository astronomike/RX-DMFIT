//****** Darksusy.h *****//
// P. Gondolo, J. Edsjö, P. Ullio, L. Bergström, M. Schelke and E.A. Baltz,
// JCAP 07 (2004) 008 [astro-ph/0406204]
// https://arxiv.org/abs/astro-ph/0406204
//***********************//

/*-------------------------------------------------------------------
Interface to initialize DarkSUSY
-------------------------------------------------------------------*/

extern"C" {	 							

void dsinit_();

}	

/*-------------------------------------------------------------------
Interface for injection spectrum
-------------------------------------------------------------------*/
extern"C" {			
										
double dsanyield_sim_(double *mwimp, double *e, int *pdg, char *hel, int *yieldpdg, int *diff, int *istat);

}

double darksusy(double Ep);
double darksusy_gamma(double Egamma);