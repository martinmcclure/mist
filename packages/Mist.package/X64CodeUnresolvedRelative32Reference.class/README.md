An X64CodeUnresolvedRelative32Reference is a signed 32-bit displacement.

When resolved, it computes the difference between its remembered address and the resolution address, and puts a signed 32-bit displacment into the byte object in the four bytes starting with the (1-based) offset.