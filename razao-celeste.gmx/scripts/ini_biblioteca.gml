#define ini_biblioteca
sy.GUI = gui_biblioteca;

#define gui_biblioteca
ini_open("Salvo.ini");
draw_set_alpha(Now[0]/30);

draw_set_colour(16743936);
draw_set_font(Gabriola);
draw_set_halign(fa_left);
draw_text(64,32,"Órgãos Brasileiros em Astronomia");

draw_set_colour(16768959);
draw_set_font(arial8);
draw_text(64,64,"Curiosidades? Pesquisas? Observatórios? Saiba onde pesquisar sobre Astronomia e diga adeus à desinformação!");

draw_set_colour(c_white);
draw_set_font(arialbold12);
draw_set_halign(fa_center);

if B5(MA,64,96,DW/2-32,136,"SAB",32,16743936){Now[1]=-3;Now[2]=gui_sab;PlaySom(sound2,0,VSom,0)};
if B5(MA,64,142,DW/4+12,182,"Saiba mais",32,16768959){Now[1]=-3;Now[2]=gui_sab;PlaySom(sound2,0,VSom,0)};
if B5(MA,DW/4+20,142,DW/2-32,182,"Acesse o site",32,c_orange) tourl("https://sab-astro.org.br/");

if B5(MA,DW/2+32,96,DW-64,136,"ON",32,16743936){Now[1]=-3;Now[2]=gui_on;PlaySom(sound2,0,VSom,0)};
if B5(MA,DW/2+32,142,DW*.75-20,182,"Saiba mais",32,16768959){Now[1]=-3;Now[2]=gui_on;PlaySom(sound2,0,VSom,0)};
if B5(MA,DW*.75-12,142,DW-64,182,"Acesse o site",32,c_orange) tourl("http://www.on.br");

if B5(MA,64,214,DW/2-32,254,"MAST",32,16743936){Now[1]=-3;Now[2]=gui_mast;PlaySom(sound2,0,VSom,0)};
if B5(MA,64,262,DW/4+12,302,"Saiba mais",32,16768959){Now[1]=-3;Now[2]=gui_mast;PlaySom(sound2,0,VSom,0)};
if B5(MA,DW/4+20,262,DW/2-32,302,"Acesse o site",32,c_orange) tourl("http://mast.br/pt-br/");

if B5(MA,DW/2+32,214,DW-64,254,"IAG",32,16743936){Now[1]=-3;Now[2]=gui_iag;PlaySom(sound2,0,VSom,0)};
if B5(MA,DW/2+32,262,DW*.75-20,302,"Saiba mais",32,16768959){Now[1]=-3;Now[2]=gui_iag;PlaySom(sound2,0,VSom,0)};
if B5(MA,DW*.75-12,262,DW-64,302,"Acesse o site",32,c_orange) tourl("http://www.iag.usp.br/");

if B5(MA,64,334,DW/2-32,374,"INPE",32,16743936) tourl("http://www.inpe.br/");
if B5(MA,64,382,DW/2-32,422,"Acesse o site",32,c_orange) tourl("http://www.inpe.br/");

if B5(MA,DW/2+32,334,DW-64,374,"AEB",32,16743936) url_open("http://www.aeb.gov.br/");
if B5(MA,DW/2+32,382,DW-64,422,"Acesse o site",32,c_orange) tourl("http://www.aeb.gov.br/");

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=scr_menu;PlaySom(sound2,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=3;Now[2]=0};
ini_close();

#define gui_sab
ini_open("Salvo.ini");
draw_set_alpha(Now[0]/30);
draw_set_colour(16743936);
draw_set_font(Gabriola);
draw_set_halign(fa_left);
draw_text(64,32,"Sociedade Astronômica Brasileira");

draw_set_font(arialbold12);
draw_set_valign(fa_top);
draw_set_colour(16768959);
var t=
"A Sociedade Astronômica Brasileira é a organização que responde pela Astronomia no Brasil. Segundo o seu estatuto, suas tarefas são:

    > Congregar os astrônomos do Brasil;
    > Zelar pela liberdade de ensino e pesquisa;
    > Zelar pelos interesses e direitos dos astrônomos;
    > Zelar pelo prestígio da ciência do País.
    
fonte: SAB, 2017.";
draw_text_ext(64,64,t,20,DW-128);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if B5(MA,DW-256,12,DW-64,52,"Acessar o site#sab-astro.org.br",32,c_orange) tourl("https://sab-astro.org.br/");

draw_set_colour(c_white);

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=gui_biblioteca;PlaySom(sound2,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=3;Now[2]=0};
ini_close();

#define gui_on
ini_open("Salvo.ini");
draw_set_alpha(Now[0]/30);
draw_set_colour(16743936);
draw_set_font(Gabriola);
draw_set_halign(fa_left);
draw_text(64,32,"Observatório Nacional");

draw_set_font(arialbold12);
draw_set_valign(fa_top);
draw_set_colour(16768959);
var t=
"Uma das mais antigas instituições brasileiras de pesquisa, ensino e prestação de serviço tecnológico, foi criada oficialmente por Dom Pedro I em 15 de outubro de 1827. Sua finalidade inicial foi a orientação e os estudos geográficos do território brasileiro e de ensino da navegação. Em 1889, com a proclamação da república, o então chamado Imperial Observatório do Rio de Janeiro passaria a ser denominado como Observatório Nacional.

Atualmente o Observatório Nacional (ON) está localizado na Cidade do Rio de Janeiro.  Tendo passado quase toda a primeira metade de seu século inicial sob o regime militar, em 1930 o Observatório Nacional passou a integrar o recém-criado Ministério da Educação e Cultura (MEC) até o ano de 1976, sendo transferido para o CNPq e em 2000 o Observatório foi colocado a cargo do Ministério da Ciência e Tecnologia (MCT) onde até hoje encontra-se subordinado. 

O ON é atualmente responsável pela geração, manutenção e divulgação da Hora Legal Brasileira e por diversos estudos em Astronomia, Astrofísicos e Geofísicos. Desde 1997 o Observatório organiza, anualmente, o curso de Astronomia no Verão voltado para professores e alunos do ensino médio e a Escola de verão para alunos graduando e graduados nas áreas de ciências exatas e da terra. Realiza também, desde 2003 o curso a distância em Astronomia e Astrofísica, em nível de divulgação, oferecido anualmente pela Divisão de Atividades Educacionais (EAD/ON).

Os pesquisadores do ON têm trabalhado no mapeamento de galáxias, bem como no desenvolvimento detectores sensíveis à fraca luminosidade desses corpos celestes. Em geral, o Observatório tem como missão, possibilitar o acesso à informação científica correta, aproximar a sociedade de uma instituição de pesquisa e capacitar professores para multiplicar o conhecimento adquirido.";
draw_text_ext(64,64,t,20,DW-128);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if B5(MA,DW-256,12,DW-64,52,"Acessar o site#www.on.br",32,c_orange) tourl("http://www.on.br");

draw_set_colour(c_white);

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=gui_biblioteca;PlaySom(sound2,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=3;Now[2]=0};
ini_close();

#define gui_mast
ini_open("Salvo.ini");
draw_set_alpha(Now[0]/30);
draw_set_colour(16743936);
draw_set_font(Gabriola);
draw_set_halign(fa_left);
draw_text(64,32,"Museu de Astronomia e Ciências Afins");

draw_set_font(arialbold12);
draw_set_valign(fa_top);
draw_set_colour(16768959);
var t=
"Uma visita ao Museu de Astronomia e Ciências Afins (MAST) é um verdadeiro mergulho na história do desenvolvimento científico e tecnológico no Brasil.

Criado no Rio de Janeiro, em 8 de março  de 1985, o MAST é uma unidade de pesquisa do Ministério da Ciência, Tecnologia, Inovações e Comunicações – MCTIC e tem como missão ampliar o acesso da sociedade ao conhecimento científico e tecnológico por meio da pesquisa, preservação de acervos e divulgação da atividade científica brasileira.
    
fonte: www.mast.br.";
draw_text_ext(64,64,t,20,DW-128);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if B5(MA,DW-256,12,DW-64,52,"Acessar o site#http://mast.br/pt-br/",32,c_orange) tourl("http://mast.br/pt-br/");

draw_set_colour(c_white);

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=gui_biblioteca;PlaySom(sound2,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=3;Now[2]=0};
ini_close();

#define gui_iag
ini_open("Salvo.ini");
draw_set_alpha(Now[0]/30);
draw_set_colour(16743936);
draw_set_font(Gabriola);
draw_set_halign(fa_left);
draw_text(64,48,"Instituto de Astronomia, Geofísica#e Ciências Atmosféricas");

draw_set_font(arialbold12);
draw_set_valign(fa_top);
draw_set_colour(16768959);
var t=
'O Instituto de Astronomia, Geofísica e Ciências Atmosféricas da USP é um dos principais polos de pesquisa do Brasil nas áreas de Ciências Exatas e da Terra. Seu corpo docente, formado por 74 professores doutores, publicou 320 artigos em periódicos e anais de congressos internacionais em 2011.

Atualmente, o IAG é organizado em três departamentos instalados na Cidade Universitária: Astronomia, Geofísica e Ciências Atmosféricas. Também integram o Instituto dois órgãos: a Estação Meteorológica, localizada no Parque do Estado, e o Observatório Abrahão de Moraes, na cidade de Valinhos.
 
Os três programas de Pós-Graduação do IAG já formaram mais de 550 mestres e 310 doutores desde a década de 1970. Na Graduação, o IAG recebe em seus três cursos 75 novos alunos todos os anos.

"Nossa missão é contribuir para o desenvolvimento do país, promovendo o ensino, a pesquisa e a difusão de conhecimentos sobre as ciências da Terra e do Universo e aspirando reconhecimento e liderança pela qualidade dos profissionais formados e pelo impacto de nossa atuação científica e acadêmica"
    
fonte: IAG, 2017.';
draw_text_ext(64,96,t,20,DW-128);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if B5(MA,DW-256,22,DW-64,62,"Acessar o site#http://www.iag.usp.br/",32,c_orange) tourl("http://www.iag.usp.br/");

draw_set_colour(c_white);

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=gui_biblioteca;PlaySom(sound2,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=3;Now[2]=0};
ini_close();