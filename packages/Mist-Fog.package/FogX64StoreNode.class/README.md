FogX64StoreNode (abstract) stores some amount of data (varies by subclass) into memory. 
StoreNodes have three children:
1. The value to be stored
2. The base address to store in
3. The index from the base address. This index is in quanta of the size being stored.