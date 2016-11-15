#ifdef USE_SKINNING

	vec4 mvPosition = modelViewMatrix * skinned;

#else

	vec4 mvPosition = modelViewMatrix * vec4( transformed, 1.0 );

#endif


#ifdef USE_HOLOGRAPHICS

	int arrayIndex = int(aRenderTargetArrayIndex);
	gl_Position = uHolographicProjectionMatrix[arrayIndex] * mvPosition;
	vRenderTargetArrayIndex = aRenderTargetArrayIndex;

#else

    gl_Position = projectionMatrix * mvPosition;

#endif
