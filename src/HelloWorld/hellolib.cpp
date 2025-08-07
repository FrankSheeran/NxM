// NxM -- demo library libhello.so
//
// License and copyright information is in the files src/doc/LICENCE and src/doc/LICENCE.NxM.
// See src/doc/NxM_Make_System.doc for details.

#include <cstdlib>
#include <iostream>

#include <HelloWorld/hellolib.h>

void HelloLib::greet( bool bFlag ) {
    if ( bFlag )
        abort();
    
    std::cout << "Hello World!" << std::endl;
}
