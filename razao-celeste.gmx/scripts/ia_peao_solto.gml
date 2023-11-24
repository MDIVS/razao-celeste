///ia_peao_solto()
if (Alvo == -4 && Mae != -4) ACT = ia_peao_seguirmae;
if (Alvo != -4) ACT = ia_peao_atacar;

Alvo = get_pxinimigo(x,y,Inimigo);
if (Alvo != -4) ACT = ia_peao_atacar;

direction += random_range(-2,2);
