function neighbourhood = getNeighbuorhood(pop, idx)

    dim = length(pop);
    i = ceil(idx/dim);
    j = mod(idx-1, dim)+1;
    
    neighbourhood = ones(3,3);
    if(i == 1 && j == 1)
        neighbourhood(1, 1) = pop(dim, dim);
        neighbourhood(1, 2:3) = pop(dim, 1:2);
        neighbourhood(2:3, 1) = pop(1:2, dim);
        neighbourhood(2:3,2:3) = pop(1:2, 1:2);
    elseif (i == 1 && j > 1 && j < dim)
        neighbourhood(1, 1:3) = pop(dim, j-1:j+1);
        neighbourhood(2:3, 1:3) = pop(1:2, j-1:j+1);
    elseif (i == 1 && j == dim)
        neighbourhood(1, 1:2) = pop(dim, j-1:j);
        neighbourhood(1, 3) = pop(dim, 1);
        neighbourhood(2:3, 1:2) = pop(1:2, j-1:j);
        neighbourhood(2:3, 3) = pop(1:2, 1);
    elseif (i > 1 && i < dim && j == dim)
        neighbourhood(:, 1:2) = pop(i-1: i+1, j-1: j);
        neighbourhood(:, 3) = pop(i-1: i-1, 1);
    elseif (i == dim && j == dim )
        neighbourhood(1:2, 1:2) = pop(i-1:i, j-1:j);
        neighbourhood(1:2, 3) = pop(i-1:i, 1);
        neighbourhood(3, 1:2) = pop(1, j-1:j);
        neighbourhood(3,3) = pop(1, 1);
    elseif (i == dim && j >1 && j < dim)
        neighbourhood(1:2, :) = pop(i-1:i, j-1: j+1);
        neighbourhood(3, :) = pop(1, j-1:j+1);
    elseif (i == dim && j == 1)
        neighbourhood(1:2, 1) = pop(i-1:i, dim);
        neighbourhood(1:2, 2:3) = pop(i-1:i, 1:2);
        neighbourhood(3, 1) = pop(1,dim);
        neighbourhood(3,2:3) = pop(1, 1:2);
    elseif (i > 1 && i < dim && j == 1)
        neighbourhood(:, 1) = pop(i-1:i+1,dim);
        neighbourhood(:, 2:3) = pop(i-1:i+1, 1:2);
    else
        neighbourhood(:,:) = pop(i-1:i+1, j-1:j+1);
    end

end