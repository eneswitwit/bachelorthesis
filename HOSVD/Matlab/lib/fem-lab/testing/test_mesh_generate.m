function [correct_vertex,correct_cell] = test_mesh_generate()    % We want to test whether the function mesh_generate() delivers correct values. Therefore we want again to hardcode a special case and    % compare it to the proposed solution by the function.    % We want to hardcode the solution for special case with mesh size equals to 0.5    % correct_vertex and correct_cell are matrices containing either 1 or 0 in each entry. If entry equals to 1 in (i,j)    % it means the hardcoded solution and the generated solution are equal in (i,j) otherwise they are inequal and we showed    % that the generated solution contains an error in (i,j).    % If all entries are 1 output instead of the whole matrix just a 1.    % Hardcode vertice values    vertex_hard = [0,0;0.5,0;1,0;0,0.5;0.5,0.5;1,0.5;0,1;0.5,1;1,1];        % Hardcode cell matrix the vertex numbering of each cell    cell_hard = [1,2,4,5;2,3,5,6;4,5,7,8;5,6,8,9];        % Generate matrices with mesh_generate()    [vertex,cell] = mesh_generate(0.5);        % Compare values for vertex matrix    correct_vertex = zeros(9,2);    for i=1:9        for j=1:2            if( vertex_hard(i,j) == vertex(i,j) )                correct_vertex(i,j) = 1;            endif        endfor    endfor        % Compare values for cell matrix    correct_cell = zeros(4,4);    for i=1:4        for j=1:4            if ( cell(i,j) == cell_hard(i,j) )                correct_cell(i,j) = 1;            endif        endfor    endfor        % If all values are correct output just 1    % Check correct_vertex    test_vertex = 1;    for i=1:9        for j=1:2            if( correct_vertex(i,j) == 0)                test_vertex = 0;            endif        endfor    endfor    if ( test_vertex == 1 )        correct_vertex = 1;    endif        % Check cell_vertex    test_cell = 1;    for i=1:4        for j=1:4            if( correct_cell(i,j) == 0)                test_cell = 0;            endif        endfor    endfor    if ( test_cell == 1 )        correct_cell = 1;    endif    endfunction