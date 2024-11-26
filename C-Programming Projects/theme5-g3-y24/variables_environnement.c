# include <stdio.h>
# include "variables_environnement.h"

extern char **environ;
int nvar(void){
    int i = 0;
	while(environ[i] != (char *)0){
		i++;
	}
	return i;
}
