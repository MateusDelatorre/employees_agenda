# employees_agenda
Teste técnico para vaga de desenvolvedor flutter na empresa BeTalent
# Requisitos gerais
Deve-se utilizar React Native ou Flutter para construir a aplicação.

É permitido utilizar libs externas, mas recomenda-se que seja o mínimo possível.

A tabela deve conter as seguintes colunas:
- imagem (thumb do/a usuário/a);
- nome;
- cargo;
- data de admissão;
- telefone.
Também deve ser possível realizar pesquisa na tabela por meio de um input. O input de pesquisa deve permitir filtrar dados por cargo, nome e telefone.

Datas e telefones devem ser formatadas no front-end e não na API.

# Como rodar o App
Para rodar o APP é necessário ter o serviço de back rodando e talvez realizar algumas configurações no front end
## Back end
Para ter acesso aos dados que alimentarão o projeto, faça o seguinte:
caso você não tenha: para Node.js, instale o pacote json-server; para Dart, instale o pacote json_rest_server;
clone este repositório do GitHub: https://github.com/BeMobile/desafio-mobile;
execute o comando para iniciar a API simulada.
Inicie a estrutura e o desenvolvimento do projeto.
É necessário deixar a API simulada rodando no terminal para que os dados sejam visualizados no projeto.

## Flutter configuration
Quando baixar o projeto use o comando `flutter create .`
#### Back URL
Dentro do lib/data/datasource tem o arquivo employees_remote_data_source.dart. Na [linha 13](https://github.com/MateusDelatorre/employees_agenda/blob/main/lib/data/datasource/employees_remote_data_source.dart#L13), [linha 16](https://github.com/MateusDelatorre/employees_agenda/blob/main/lib/data/datasource/employees_remote_data_source.dart#L16) e [linha 18](https://github.com/MateusDelatorre/employees_agenda/blob/main/lib/data/datasource/employees_remote_data_source.dart#L18) estão respectivamente os links para web, teste e Android Studio VM.
Na [linha 24](https://github.com/MateusDelatorre/employees_agenda/blob/main/lib/data/datasource/employees_remote_data_source.dart#L24) após o `:` deve-se trocar a porta caso seja diferente
