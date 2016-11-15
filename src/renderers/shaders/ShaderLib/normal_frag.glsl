uniform float opacity;
varying vec3 vNormal;

#include <common>
#include <packing>
#include <logdepthbuf_pars_fragment>
#include <clipping_planes_pars_fragment>

void main() {

	#include <clipping_planes_fragment>
	gl_FragColor = vec4( packNormalToRGB( vNormal ), opacity );

	float index = vRenderTargetArrayIndex;

	#include <logdepthbuf_fragment>

}
