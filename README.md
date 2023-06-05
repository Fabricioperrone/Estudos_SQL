# Estudos_SQL
## Seja bem vindo(a)!
Esse é um repositório de estudos de banco de dados MySQL, através do curso da Bóson treinamentos.

## Link para o curso.

https://youtube.com/playlist?list=PLucm8g_ezqNrWAQH2B_0AnrFY5dJcgOLR

# Bons Estudos!!


# Aula 36

## Parâmetros IN, OUT e INOUT em Procedimentos Armazenados (SP) Stored Procedures
 Podemos usar parâmetros para passar argumentos para o procedimento
 armazenado e obter valores a partir dele.
 Em MySQL existem três tipos de parâmetros:
- IN
- OUT
- INOUT
------------------------------------------------------------------------------------

## Parâmetro IN  

É o modo padrão. Quando você define um parâmetro IN em um SP, o programa
chamador de passar um argumento ao procedimento armazenado. 
Essa passagem de parâmetros é do tipo passagem por valor, portanto 
o valor do parâmetro fora o procedimento armazenado permanece inalterado.
São semelhantes ao parâmetros de função.

------------------------------------------------------------------------------------

## Parâmetro OUT 
 O valor de um parâmetro OUT pode ser alterado dentro do procedimento armazenado
 e seu novo valor é passado de volta ao programa chamador.
 O procedimento armazenado não pode acessar o valor inicial do parâmetro OUT quando ele
 é iniciado, e a variável passada é "limpa". 
 Procedimentos OUT são similares aos procedimentos INOUT,
 com uma diferença significativa: no parâmetro OUT, o valor do
 parâmetro, portanto o valor da variável cujo valor é passado como parâmetro, 
 é ajustado para NULL no início da execução do procedimento.
 
---------------------------------------------------------------------------------------

## Parâmetro INOUT
 Trata-se de uma combinação dos parâmetros IN e OUT. Isso significa que o programa chamador deve passar  o argumento e o procedimento armazenado pode modificar
 o parâmetro INOUT e repassar o novo valor de volta ao  programa chamador. 
 Portanto, uma referência à variável externa é passada ao procedimento. 
 
 
