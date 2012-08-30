FogX64Node is an abstract class for all Fog nodes in the x86-64 architecture. 

Fog nodes have architecture-independent "portable" protocol, and archictrure-dependent x86-64 protocol. The Mist source code compiler and Mist primitives should use only the portable protocol. The portable protocol should also be used by most optimizations such as the inliner. 

Other protocols are used in compiling to native machine code. Some architecture-specific optimizations may also be done at this time. 