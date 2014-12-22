sendto-php
==========


Atalho para executar o **built-in server** do PHP no Windows através do menu "Enviar para...". 
Com esse atalho, você consegue executar um script (ou uma pasta) de forma mais rápida, sem perder a janela de debug e seu browser preferido =)

*Funciona somente a partir das versões 5.4.x do PHP!*


###Como usar###

Vou dar como exemplo de uso meu ambiente de desenvolvimento.

1. Criamos uma pasta chamada `"PHP"`, no Drive `"C:\"`

2. Baixamos o zip da última versão do PHP em uma pasta específica, nomeada por versão

 (Exemplo: Se baixo a versão 5.6.2, descompacto o zip da mesma na pasta `"C:\PHP\php-5.6.2"`)
 
3. Na pasta "PHP", crio o arquivo `'phpserver-5.6.2.bat'` com o seguinte conteúdo: 
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

5. Feito! Agora para teste, clique com o botão direito no arquivo `infoserver.php`,  selecione "Enviar Para" e em seguida, clique no atalho criado, que estará no menu.
Uma aba do browser e um *prompt* do DOS serão abertos. No browser, adicione o nome do arquivo (infoserver.php) para executá-lo. Veja que o prompt exibirá as informações de debug.


6. Lembrando que o mesmo pode ser feito para executar uma pasta. Basta clicar com o botão direito nela e escolher o atalho criado através da opção "Enviar Para". Funciona da mesma forma.


**E mãos a obra! Happy Coding =) **

Caso queira adicionar mais uma versão do PHP, basta repetir os procedimentos e criar quantos atalhos quiser na pasta "SendTo" do Windows.


###FAQ###


**1 - Funciona em quais versões do Windows?**

Até agora, testado na versão 7 (32/64 bits). 

**2 - Onde fica o arquivo php.ini?**

Na maioria das vezes, fica na pasta em que você descompacta os executáveis do php. Lá você encontrará um arquivo php.ini com as configs. 
Para maiores informações, recomendo rodar pela primeira vez o script `infoserver.php`, disponível nesse repositório.

**3 - Como adicionar extensões?**

Via de regra, as extensões ficam sempre na pasta `"ext"` (a não ser que a diretiva `extension_dir` tenha sido definida). Não se esqueça de habilitá-las no php.ini

**4 - Não consegui fazer esse atalho funcionar. Pode me ajudar?**

Com certeza. Mande-me um pvt ou abra uma issue. 