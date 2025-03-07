#include "struk.h"
// required for atoi
#include <stdlib.h>
// required for getopt
#include <getopt.h>
// required for isprint
#include <ctype.h>

#include <string.h>


void _main_preprocess_print_usage(struct handle_struct *h,uint8_t leave)
{
    fprintf(stdout,"%s is a sort struktur stub.\n",h->argv[0]);
    fprintf(stdout,"-h\tshowes this help and exit\n");
    fprintf(stdout,"-v\tenable verbose mode\n");
    fprintf(stdout,"-n <KVPs>\tnumber of key-value-pairs\n");
    fprintf(stdout,"\t\t1 < n < 10^6\n");
    fprintf(stdout,"-m <mode>\tdata gen mode\n");
    fprintf(stdout,"\t\t0:ASC\n\t\t1:DESC\n\t\t2:VAR1\n\t\t3:VAR2\n");
    fprintf(stdout,"-s <sot>\"bubble\" \"quick\" \"insert\" \"meins\" \n");
    if (1 == leave) exit(0);
}

int _main_preprocess_getopt(struct handle_struct *h) {
    int c;
    int64_t dflag;
    char sflag[10];
    strcpy(h->sort_variant_str,"bubble");
    
    while ((c = getopt(h->argc, h->argv, "hn:vm:s:")) != -1)
        switch (c) {
            case 'h':
                /* show help and exit */
                _main_preprocess_print_usage(h, 1);
                return 1;
                break;
            case 'v':
                /* show help and exit */
                h->verbose = 1;
                fprintf(stderr, "\tVerbose mode enabled\n");
                break;
            case 'n':
                dflag = atoi(optarg);
                if ((1 >= dflag) || (1000000 < dflag)) {
                    fprintf(stderr, "ERROR\n");
                    fprintf(stderr, "\t-n [2..1000000] required/allowed but got: %ld\n", dflag);
                } else {
                    h->KVPs = (uint32_t)dflag;
                }
                fprintf(stderr, "\tNumber of key-value-pairs: %u\n", h->KVPs);
                break;
            case 'm':
                dflag = atoi(optarg);
                if ((0 > dflag) || (3 < dflag)) {
                    fprintf(stderr, "ERROR\n");
                    fprintf(stderr, "\tMode %ld is unknown\n", dflag);
                } else {
                    h->data_variant = (uint8_t)dflag;
                }
                fprintf(stderr, "\tdata generation set to mode: %u\n", h->data_variant);
                break;

            case 's':
	      strcpy(sflag,optarg);
	      if ( (strcmp("bubble",  sflag) == 0) || (strcmp("quick",  sflag) == 0) ||  (strcmp("insert",  sflag) == 0) || (strcmp("meins",  sflag) == 0) ) {
                    strcpy(h->sort_variant_str,sflag);
		    fprintf(stderr, "\tsort variant set: %s\n", h->sort_variant_str);
                } else {
                    fprintf(stderr, "ERROR\n");
                    fprintf(stderr, "\tSort variant %s is unknown\n", sflag);
                }
                break;

            default:
                //abort ();
                break;
        }

    return 0;
}



int pre_process(int argc, char **argv, struct handle_struct *h)
{
    h->argc = argc;
    h->argv = argv;
    /* Defaults */
    h->KVPs = 32;
    h->verbose = 0;
    h->data_variant = 0;
    h->nanoseconds = 0;
    //    h->sort_variant_str = "quick";
    _main_preprocess_getopt(h);
    return 0;
}



