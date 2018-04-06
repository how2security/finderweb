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
	 
	 # ./finderweb.sh http://www.xpto.com.br
	 
	 ################################################################################
	 # By Wellington Luiz da Silva aka w3ll                                         #
	 #                                                                              #
	 # FINDER WEB Version 1.0 - How2Sec Lab                                         #
	 #                                                                              #
	 # Created: 20/10/2016  Updated: 20/10/2016                                     #
	 ################################################################################
	 
	 --2016-10-26 02:08:28--  http://www.xpto.com.br/
	 Resolving www.xpto.com.br (www.xpto.com.br)... 200.X.X.49, 200.X.X.20, 2804:49c:3103:405:ffff:ffff:ffff:3
	 Connecting to www.xpto.com.br (www.xpto.com.br)|200.X.X.49|:80... connected.
	 HTTP request sent, awaiting response... 200 OK
	 Length: 20018 (20K) [text/html]
	 Saving to: ‘index.html’
	 
	 index.html     100%[==============================>]  19.55K  --.-KB/s   in 0.05s  
	 
	 2016-10-26 02:08:28 (418 KB/s) - ‘index.html’ saved [20018/20018]
	 
	 FQDN => Hosts Encontrados
	 =========================
	 bpag.xptz.com.br
	 fonts.googleapis.com
	 h.imgxptz.com
	 jsxptz.com
	 painel.xpto.com.br
	 xpto.com.br
	 xpto.imgxptz.com
	 www.linkedin.com
	 www.uni5.com
	 www.xpto.com.br
	 www.vagas.com.br
	 N de Dominios encontrados:  11
	 
	 
	 HOST2IP => Correlacionando os Hosts com os Enderecos IP Encontrados
	 ==============================================================
	 bpag.xptz.com.br has address 200.X.X.226
	 googleadapis.l.google.com has address 216.X.X.42
	 cache.xptz.com.br has address 200.X.X.8
	 cache.xptz.com.br has address 200.X.X.95
	 cache.xptz.com.br has address 200.X.X.50
	 jsxptz.com has address 200.X.X.241
	 jsxptz.com has address 200.X.X.184
	 jsxptz.com has address 200.X.X.70
	 painel.xpto.com.br has address 200.X.X.193
	 xpto.com.br has address 200.X.X.46
	 xpto.com.br has address 200.X.X.9
	 cache.xptz.com.br has address 200.X.X.95
	 cache.xptz.com.br has address 200.X.X.50
	 cache.xptz.com.br has address 200.X.X.8
	 pop-esp2-alpha.www.linkedin.com has address 108.X.X.129
	 www.uni5.com has address 200.X.X.68
	 conteudo3.xptz.com.br has address 200.X.X.20
	 conteudo3.xptz.com.br has address 200.X.X.49
	 www.vagas.com.br.cdn.cloudflare.net has address 104.X.X.223
	 www.vagas.com.br.cdn.cloudflare.net has address 104.X.X.223
	 www.vagas.com.br.cdn.cloudflare.net has address 104.X.X.223
	 www.vagas.com.br.cdn.cloudflare.net has address 104.X.X.223
	 www.vagas.com.br.cdn.cloudflare.net has address 104.X.X.223
	 
	 
	 IP => Extraindo os Enderecos IP dos Hosts Encontrados
	 =====================================================
	 104.X.X.223
	 104.X.X.23
	 104.X.X.223
	 104.X.X.223
	 104.X.X.223
	 108.X.X.129
	 200.X.X.193
	 200.X.X.241
	 200.X.X.50
	 200.X.X.68
	 200.X.X.184
	 200.X.X.20
	 200.X.X.8
	 200.X.X.9
	 200.X.X.226
	 200.X.X.70
	 200.X.X.46
	 200.X.X.49
	 200.X.X.5
	 216.X.X.42
	 
	 [+] Search results saved in: www.xpto.com.br
	 
	 #  

Primeiramente executamos sem passar como parâmetro uma URL, validando desta forma as informações passadas para o script. Logo em seguida executamos novamente passando a URL do portal e ele fez o processamento e entregou o resultado de forma correta.
