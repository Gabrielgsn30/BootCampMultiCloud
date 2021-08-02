# BootCampMultiCloud
BootCampMultiCloud utiliza, diversos serviços em vários provedores na nuvem
A ideia no BootCamp era pegar um projeto on premise e transformá-lo em um ptojeto Cloud, no caso utilizamos um projeto de controle de aplicação de vacinas.
A Missão 01 era criar as contas nos provedores Cloud, AWS e Google Cloud.
A Missão 02 utilizamos o Terraform para fazer o provisionamento dos serviços a serem utilizados, no caso no GoogleClooud provisionamos um banco de Dados Mysql e utilizamos tambem o GKE o Kubernetes, já na AWS, provisionamos o bucket S3
A Missao 03 foi basicamente um teste do DockerFile, utilizamos o Sheel do Google para testar a aplicação, subimos tambem uma imagem para o DockerHub pessoal e um container mysql para testes.
A Missão 04 e última, ja fizemos a aplicação realmente funcionar no Kubernetes, além de restaurar um dump no GoogleCloud do banco de dados que rodava on premise e também restauramos todos os pdfs dos clientes que ficavam tambem on premise la na AWS no bucket.
Por fim a arquitetura ficou dessa maneira:
![alt text](https://github.com/Gabrielgsn30/BootCampMultiCloud/blob/main/Missao04/arquitetura.png)

projeto está no ar, pode conferir no link:
http://35.231.89.196/
