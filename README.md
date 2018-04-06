# finderweb

Procurar por links externos no index.html das páginas web.

O reconhecimento ativo envolve uma sondagem direta a sistemas do alvo, com o objetivo de identificar hosts específicos, endereços IP ou blocos de endereços IP, serviços de rede, aplicações publicadas, entre outras informações.

 # ./finderweb.sh 
 ################################################################################
 # By Wellington Luiz da Silva aka w3ll                                         #
 #                                                                              #
 # FINDER WEB Version 1.0 - How2Sec Lab                                         #
 #                                                                              #
 # Created: 20/10/2016  Updated: 20/10/2016                                     # 
 ################################################################################
 
 
 [-] ERROR: You need to specify a URL
 [+] Use: ./finderweb.sh http://www.exemplo.com.br
 
 # ./finderweb.sh http://www.pto.com.br
 
 ################################################################################
 # By Wellington Luiz da Silva aka w3ll                                         #
 #                                                                              #
 # FINDER WEB Version 1.0 - How2Sec Lab                                         #
 #                                                                              #
 # Created: 20/10/2016  Updated: 20/10/2016                                     #
 ################################################################################
 
 --2016-10-26 02:08:28--  http://www.uoldiveo.com.br/
 Resolving www.uoldiveo.com.br (www.uoldiveo.com.br)... 200.221.64.49, 200.147.68.20, 2804:49c:3103:405:ffff:ffff:ffff:3
 Connecting to www.uoldiveo.com.br (www.uoldiveo.com.br)|200.221.64.49|:80... connected.
 HTTP request sent, awaiting response... 200 OK
 Length: 20018 (20K) [text/html]
 Saving to: ‘index.html’
 
 index.html     100%[==============================>]  19.55K  --.-KB/s   in 0.05s  
 
 2016-10-26 02:08:28 (418 KB/s) - ‘index.html’ saved [20018/20018]
 
 FQDN => Hosts Encontrados
 =========================
 bpag.uol.com.br
 fonts.googleapis.com
 h.imguol.com
 jsuol.com
 painel.uoldiveo.com.br
 uoldiveo.com.br
 uoldiveo.imguol.com
 www.linkedin.com
 www.uni5.com
 www.uoldiveo.com.br
 www.vagas.com.br
 N de Dominios encontrados:  11
 
 
 HOST2IP => Correlacionando os Hosts com os Enderecos IP Encontrados
 ==============================================================
 bpag.uol.com.br has address 200.221.137.226
 googleadapis.l.google.com has address 216.58.202.42
 cache.uol.com.br has address 200.147.68.8
 cache.uol.com.br has address 200.221.7.95
 cache.uol.com.br has address 200.147.4.50
 jsuol.com has address 200.147.15.241
 jsuol.com has address 200.147.67.184
 jsuol.com has address 200.221.2.70
 painel.uoldiveo.com.br has address 200.147.112.193
 uoldiveo.com.br has address 200.221.64.46
 uoldiveo.com.br has address 200.147.68.9
 cache.uol.com.br has address 200.221.7.95
 cache.uol.com.br has address 200.147.4.50
 cache.uol.com.br has address 200.147.68.8
 pop-esp2-alpha.www.linkedin.com has address 108.174.12.129
 www.uni5.com has address 200.147.63.68
 conteudo3.uol.com.br has address 200.147.68.20
 conteudo3.uol.com.br has address 200.221.64.49
 www.vagas.com.br.cdn.cloudflare.net has address 104.16.24.223
 www.vagas.com.br.cdn.cloudflare.net has address 104.16.25.223
 www.vagas.com.br.cdn.cloudflare.net has address 104.16.21.223
 www.vagas.com.br.cdn.cloudflare.net has address 104.16.23.223
 www.vagas.com.br.cdn.cloudflare.net has address 104.16.22.223
 
 
 IP => Extraindo os Enderecos IP dos Hosts Encontrados
 =====================================================
 104.16.21.223
 104.16.22.223
 104.16.23.223
 104.16.24.223
 104.16.25.223
 108.174.12.129
 200.147.112.193
 200.147.15.241
 200.147.4.50
 200.147.63.68
 200.147.67.184
 200.147.68.20
 200.147.68.8
 200.147.68.9
 200.221.137.226
 200.221.2.70
 200.221.64.46
 200.221.64.49
 200.221.7.95
 216.58.202.42
 
 [+] Search results saved in: www.uoldiveo.com.br
 
 #  

Primeiramente executamos sem passar como parâmetro uma URL, validando desta forma as informações passadas para o script. Logo em seguida executamos novamente passando a URL do portal e ele fez o processamento e entregou o resultado de forma correta.
