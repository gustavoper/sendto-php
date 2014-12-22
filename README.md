sendto-php
==========


Atalho para executar o **built-in server** do PHP no Windows atrav�s do menu "Enviar para...". 
Com esse atalho, voc� consegue executar um script (ou uma pasta) de forma mais r�pida, sem perder a janela de debug e seu browser preferido =)

*Funciona somente a partir das vers�es 5.4.x do PHP!*


###Como usar###

Vou dar como exemplo de uso meu ambiente de desenvolvimento.

1. Criamos uma pasta chamada `"PHP"`, no Drive `"C:\"`

2. Baixamos o zip da �ltima vers�o do PHP em uma pasta espec�fica, nomeada por vers�o

 (Exemplo: Se baixo a vers�o 5.6.2, descompacto o zip da mesma na pasta `"C:\PHP\php-5.6.2"`)
 
3. Na pasta "PHP", crio o arquivo `'phpserver-5.6.2.bat'` com o seguinte conte�do: 
```
      explorer http://localhost:8888
      cd C:\PHP\php-5.6.2
      rem arq ou dir?
      if exist "%~1\" (
        php -S localhost:8888 -t "%~1"
      ) else (
        php -S localhost:8888 -t "%~dp1"
      )
```

4. Em seguida, crio um atalho para esta bat na pasta `"C:\Users\[usuario]\AppData\Roaming\Microsoft\Windows\SendTo"`

5. Feito! Agora para teste, clique com o bot�o direito no arquivo `infoserver.php`,  selecione "Enviar Para" e em seguida, clique no atalho criado, que estar� no menu.
Uma aba do browser e um *prompt* do DOS ser�o abertos. No browser, adicione o nome do arquivo (infoserver.php) para execut�-lo. Veja que o prompt exibir� as informa��es de debug.


6. Lembrando que o mesmo pode ser feito para executar uma pasta. Basta clicar com o bot�o direito nela e escolher o atalho criado atrav�s da op��o "Enviar Para". Funciona da mesma forma.


**E m�os a obra! Happy Coding =) **

Caso queira adicionar mais uma vers�o do PHP, basta repetir os procedimentos e criar quantos atalhos quiser na pasta "SendTo" do Windows.


###FAQ###


**1 - Funciona em quais vers�es do Windows?**

At� agora, testado na vers�o 7 (32/64 bits). 

**2 - Onde fica o arquivo php.ini?**

Na maioria das vezes, fica na pasta em que voc� descompacta os execut�veis do php. L� voc� encontrar� um arquivo php.ini com as configs. 
Para maiores informa��es, recomendo rodar pela primeira vez o script `infoserver.php`, dispon�vel nesse reposit�rio.

**3 - Como adicionar extens�es?**

Via de regra, as extens�es ficam sempre na pasta `"ext"` (a n�o ser que a diretiva `extension_dir` tenha sido definida). N�o se esque�a de habilit�-las no php.ini

**4 - N�o consegui fazer esse atalho funcionar. Pode me ajudar?**

Com certeza. Mande-me um pvt ou abra uma issue. 