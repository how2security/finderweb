#!/bin/bash

### CORES
amarelo="\e[33;1m"
azul="\e[34;1m"
verde="\e[32;1m"
vermelho="\e[31;1m"
fim="\e[m"

# BROWSER AGENT
AGENT="Mozilla/5.0 (Windows NT 10.0; WOW64)"

banner()
{
echo "#  2▄222222222▄22▄▄▄▄▄▄▄▄▄▄▄22▄222222222▄22▄▄▄▄▄▄▄▄▄▄▄22▄▄▄▄▄▄▄▄▄▄▄22▄▄▄▄▄▄▄▄▄▄▄22▄▄▄▄▄▄▄▄▄▄▄2"
echo "#  ▐░▌2222222▐░▌▐░░░░░░░░░░░▌▐░▌2222222▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌"
echo "#  ▐░▌2222222▐░▌▐░█▀▀▀▀▀▀▀█░▌▐░▌2222222▐░▌2▀▀▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀2▐░█▀▀▀▀▀▀▀▀▀2▐░█▀▀▀▀▀▀▀▀▀2"
echo "#  ▐░▌2222222▐░▌▐░▌2222222▐░▌▐░▌2222222▐░▌2222222222▐░▌▐░▌2222222222▐░▌2222222222▐░▌2222222222"
echo "#  ▐░█▄▄▄▄▄▄▄█░▌▐░▌2222222▐░▌▐░▌222▄222▐░▌2▄▄▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄2▐░█▄▄▄▄▄▄▄▄▄2▐░▌2222222222"
echo "#  ▐░░░░░░░░░░░▌▐░▌2222222▐░▌▐░▌22▐░▌22▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌2222222222"
echo "#  ▐░█▀▀▀▀▀▀▀█░▌▐░▌2222222▐░▌▐░▌2▐░▌░▌2▐░▌▐░█▀▀▀▀▀▀▀▀▀22▀▀▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀2▐░▌2222222222"
echo "#  ▐░▌2222222▐░▌▐░▌2222222▐░▌▐░▌▐░▌2▐░▌▐░▌▐░▌22222222222222222222▐░▌▐░▌2222222222▐░▌2222222222"
echo "#  ▐░▌2222222▐░▌▐░█▄▄▄▄▄▄▄█░▌▐░▌░▌222▐░▐░▌▐░█▄▄▄▄▄▄▄▄▄22▄▄▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄2▐░█▄▄▄▄▄▄▄▄▄2"
echo "#  ▐░▌2222222▐░▌▐░░░░░░░░░░░▌▐░░▌22222▐░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌"
echo "#  2▀222222222▀22▀▀▀▀▀▀▀▀▀▀▀22▀▀2222222▀▀22▀▀▀▀▀▀▀▀▀▀▀22▀▀▀▀▀▀▀▀▀▀▀22▀▀▀▀▀▀▀▀▀▀▀22▀▀▀▀▀▀▀▀▀▀▀2"
echo "#  2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222"
echo -e "$azul##############################################################################################$fim"
echo -e "$azul# By Wellington Luiz da Silva aka w3ll                                                       #$fim"
echo -e "$azul#                                                                                            #$fim"
echo -e "$azul# FINDER WEB Version 1.0 - How2Sec Lab                                                       #$fim"
echo -e "$azul#                                                                                            #$fim"
echo -e "$azul# Created: 20/10/2016  Updated: 20/10/2016                                                   #$fim"
echo -e "$azul##############################################################################################$fim"

echo -e "\012"
}
banner

# Validando se o usuario passou a URL
if [ "$1" == "" ] ;then
	echo -e "$vermelho""[-] ERROR: You need to specify a URL$fim"
	echo -e "$verde""[+] Use: $0 http://www.exemplo.com.br\n$fim"
	exit 1
fi

# Apagando pesquisas anteriores
rm index.ht*

# Fazendo o download passando como parametro o User-Agent do Browser
# Isso para fazer bypass de WAF com filtros de Browsers
echo -e "$verde""[+] ""$fim""Downloading home page..."
wget --user-agent="$AGENT" $1 > /dev/null 2>&1

# Laco FOR para fazer a quebra de linha em conteudos compactados
# Enviamos o resultado para um arquivo temporario com o nome PID.urls.1 em /tmp
echo -e "$verde""[+] ""$fim""Processing home page..."
for URLs in $(grep "http" index.html) ;do
	echo $URLs >> /tmp/$$.urls.1
done

# Criando a pasta onde serao salvos os resultados
echo -e "$verde""[+] ""$fim""Creating file with results..."
DIR=`echo "$1" | cut -f3 -d"/"`
mkdir -p $DIR

# Seprarando os Links Externos (FQDN)
echo -e "$verde""[+] ""$fim""Searching URL..."
grep -v ^$ /tmp/$$.urls.1 | grep "href=" | grep "http" | cut -d"/" -f3 | sort -u >> /tmp/$$.urls.2
echo "FQDN => Hosts" >> $DIR/finderweb.aud
echo "=============" >> $DIR/finderweb.aud
cat /tmp/$$.urls.2 >> $DIR/finderweb.aud
echo "Number of domain found: " `cat /tmp/$$.urls.2 | wc -l` >> $DIR/finderweb.aud
echo -e "\n" >> $DIR/finderweb.aud

# Correlacionando os Hosts com os Enderecos IP
echo -e "$verde""[+] ""$fim""Correlating Hosts to IP address...\n"
for Hostname in $(cat /tmp/$$.urls.2) ;do
	host $Hostname | grep "has address" >> /tmp/$$.urls.3
done
echo "HOST2IP => Correlating Hosts to IP address" >> $DIR/finderweb.aud
echo "==========================================" >> $DIR/finderweb.aud
cat /tmp/$$.urls.3 >> $DIR/finderweb.aud
echo -e "\n" >> $DIR/finderweb.aud

# Extraindo os Enderecos IP dos Hosts
cat /tmp/$$.urls.3 | cut -d" " -f4 | sort -u >> /tmp/$$.urls.4
echo "IP => Extracting IP Address" >> $DIR/finderweb.aud
echo "===========================" >> $DIR/finderweb.aud
cat /tmp/$$.urls.4 >> $DIR/finderweb.aud

# Mostrando os Resultados
cat $DIR/finderweb.aud

# Removendo os Arquivos Temporarios
rm /tmp/$$.urls*

echo -e "$verde""[+] Search results saved in directory: $(pwd)/$DIR""$fim"
