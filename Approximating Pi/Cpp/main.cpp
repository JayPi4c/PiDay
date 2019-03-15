/*
 * Made by Jonas Pohl 03.15.19
 * Based on "Approximating Pi" by Daniel Shiffman
 * (https://thecodingtrain.com/CodingChallenges/095-approximating-pi.html)
 *
 */

#include <iostream>
#include <math.h>

using namespace std;
char signs[4] = {'|','/','-','\\'};

double a = 1000.0;

bool isInCircle(double x, double y, double r);
double random(double min, double max);

int main(int argc, char* argv[]){
	long limit;
	if(argc > 2){
		cout<<"Usage: ./main [Number of steps as a limit]"<<flush;
		exit(EXIT_FAILURE);
	}else if(argc == 2){
		sscanf(argv[1], "%ld", &limit);
		cout<<"The limit is set to "<<limit<<flush;
	}else{
		limit = -1;
		cout<<"This program will theoretically run forever!"<<flush;
	}
	cout<<'\n'<<flush;

	long NAlle = 0;
	long NinKreis = 0;
	unsigned long i = 0;
	double pi;
	while(limit == -1 || i < limit){
		i++;
		double x = random(0, a);
		double y = random(0, a);
		NAlle++;
		if(isInCircle(x, y, a*0.5))
			NinKreis++;
		pi = (NinKreis * a * a) / (NAlle * a * a * 0.25);
		cout<<'\r'<<signs[NAlle % 100000 / 25000]<<pi<<flush;
	}
	cout<<'\n'<<"Pi is approximated as: "<<pi<<'\n';
	return 0;

}

bool isInCircle(double x, double y, double r){
	return sqrt((x-a*0.5)*(x-a*0.5)+(y-a*0.5)*(y-a*0.5)) < r;
}

double random(double min, double max)
{
    double d = (double)rand() / RAND_MAX;
    return min + d * (max - min);
}
