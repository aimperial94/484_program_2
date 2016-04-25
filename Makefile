
mrraytracer: gmath.hh raytrace.hh mrraytracer.cc
	clang++ -std=c++11 mrraytracer.cc -o mrraytracer

clean:
	rm -f mrraytracer spheres_o.ppm spheres_p.ppm ballpit_o.ppm ballpit_p.ppm

test: spheres_o.ppm

all: spheres_o.ppm spheres_p.ppm ballpit_o.ppm ballpit_p.ppm

spheres_o.ppm: mrraytracer
	./mrraytracer --scene spheres -o spheres_o.ppm

spheres_p.ppm: mrraytracer
	./mrraytracer --scene spheres -o spheres_p.ppm --perspective

ballpit_o.ppm: mrraytracer
	./mrraytracer --scene ballpit -o ballpit_o.ppm

ballpit_p.ppm: mrraytracer
	./mrraytracer --scene ballpit -o ballpit_p.ppm --perspective
