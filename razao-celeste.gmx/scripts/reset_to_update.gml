///reset_to_update( versão )
ini_open("Versao.ini");
var v = string(argument0);
var old_v = ini_read_string("Config","Version","");

if old_v=="" ini_write_string("Config","Version",v)
else if old_v!=v {
    if show_question("Você atualizou o jogo recentemente e podem haver bugs, remomenda-se que apague os dados do jogo.#Apagar dados?") {
        ini_close();
        file_delete("Versao.ini");
        game_end();
        exit;
    };
}
ini_close();
