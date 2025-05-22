#ifndef _GEN_CDO_H_
#define _GEN_CDO_H_

#include <vector>
#include <string>

void initializeGenerator(bool AXIdebug, bool endianness);

void generateFilesSeparately(const std::string &outputDir, bool AXIdebug) ;

#endif /* _GEN_CDO_H_ */
