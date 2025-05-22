#include "TopGraph.h"
#include "../SystemConfig.h"

{% for graph in graph_list %}
TopSweepGraph<ROW, BLOCK_SIZE, {{graph['start_col']}}, {{graph['start_row']}}, {{graph['start_direction']}}> topSweepGraph{{graph['id']}}({{graph['id']}});
TopNormGraph<ROW, BLOCK_SIZE, {{graph['start_col']-1}}, {{graph['start_row']}}, {{graph['start_direction']}}> topNormGraph{{graph['id']}}({{graph['id']}});
{% endfor %}

#if defined(__AIESIM__) || defined(__X86SIM__)

int main() {
    
    
    return 0;
}
#endif