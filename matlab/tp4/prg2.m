calculer_y_et_tracer_graphique(-10);
function y = calculer_y_et_tracer_graphique(x)
hold on
    if x <= -1
        y = cos(x*2) + x^5;
    elseif x > -1 && x <1
        y = 3/(x+3*pi);
    else
        y = sqrt(x+exp(x));
    end
    
    plot(x,y);
    title('Graphique de Y en fonction de X');
    xlabel('X');
    ylabel('Y');
hold off
end