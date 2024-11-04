Muito obrigado por escolher nosso projeto MedConnect, para melhor usufruir nosso sistema siga essa passo-a-passo

1° Passo - Criar um WebApp atravez do portal Azure
	1.1 Entre no portal azure e entre na aba "Serviços de Aplicativos" >> "Criar" >> "Aplicativo Web".

	1.2 Preencha os proximos espaçõs em branco com informações à sua escolha
		* Assinatura
		* Grupo de recursos (clique em "criar novo" caso não aja opções de outros grupos de recursos)
		* Nome
		* Região (recomenda-se a região mais proxima de sua localização presente, para esse teste uslizaremos "brazil south")
		* Plano do Linux (escolha um nome para seu plano)
		* Plano de preços (para nossa demonstração utilizamos Básico B1)

	1.3 Escolha as proximas opções obrigatóriamente
		* Publicar (escolha "codigo")
		* Pilha de runtime (.NET 8 (LTS))

	1.4 Clique em Avançar:Implantação
		* A "implantação continua" pode ficar desabilitada
		* A "Autenticação básica" deve ficar habilitada
	1.5 Clique no botão "Revisar + criar"

2° Passo - Criar tabelas: Utilizando o banco de dados de sua preferencia use o scrit no arquivo CreateDLL.sql para
 criar as tabelas que usaremos em nosso projeto

3° Passo - atrazes de sua conta no Azure DevOps crie um novo projeto com nome e descrição à sua escolhe, e em "avançado"
escolha "Agile" como Work item process.

4° Passo - Importar esse repositório para o repositório Azure
	4.1 Clique na aba "Repos" à esquerda da tela 
	4.2 (Atomaticamente um repositório vaziu com o nome de seu protojeto) na parte superior da tela clique no ícone
	    com o nome de seu projeto
	4.3 Clique em "Import Repository" e na janela que abrir recorte e cole a URL desse repositório no espaço indicado por
	    "Clone URL"
	4.4 Clique em "Import"

5° Passo - Criar uma PipeLine
	5.1 Clique na aba PipeLine à esquerda da tela em seguida clique no botão "Create PipeLine"
	5.2 Na aba "Connect" escolha a opção "Use the classic editor"
	5.3 Na janela que abrir Certifique-se que as seguintes opções estejam selecionadas
		5.3.1 Em "Select a source" --> "Azure Repos Git" esta selecionada
		5.3.2 Em "Team projet" --> o nome do projeto onde se encontra o Azure Repos criado no 4°
		5.3.3 Em "Repository" --> o nome do Azure Repos criado no 4°  
		5.3.4 Em "Default branch for manual and scheduled builds" --> escolha a branch main
		5.3.5 Clique em continue

	5.4 Na janela "Select a template" escolha a opção "ASP.NET Core" e clique em "Apply"
	5.6 Siga as configurações:
		5.6.1 Na aba "Tasks" 
			5.6.1.1 Selecione a aba Pipeline e siga as configurações
					"Name": Coloque um nome de sua escolha na PipeLine
					"Agent pool": Azure Pipelines
					"Agent Specification": windows-latest
					(novas mudanças não serão necessarias)
			5.6.1.2 Selecione a aba "Get sources" novas mudanças não serão necessarias
			5.6.1.3 Selecione "Agente Job 1" e siga as configurações
					  "Agent pool" --> Azure Pipelines 
					  "Agent Specification" --> windows-latest
					  (novas mudanças não serão necessarias)
			5.6.1.4 Selecione "Restore" e siga as configurações
					  "Azure Resource Manager connect" --> Escolha a assinatura associada com
					  com a criação de seu serviço de WebApp criado no 1° Passo
					  (Novas mudanças não serão necessarias)
			5.6.1.5 Selecione "Build" e siga as configurações
					  "Azure Resource Manager connect" --> Escolha a assinatura associada com
					  com a criação de seu serviço de WebApp criado no 1° Passo
			5.6.1.6 Selecione "Test" e siga as configurações
					  "Azure Resource Manager connect" --> Escolha a assinatura associada com
					  com a criação de seu serviço de WebApp criado no 1° Passo
			5.6.1.7 Selecione "Publish" e siga as configurações
					  "Azure Resource Manager connect" --> Escolha a assinatura associada com
					  com a criação de seu serviço de WebApp criado no 1° Passo
			5.6.1.7 Selecione "Publish Artifact" e abra a aba "Control Options", localize "Run this task"
					  e escolha "Only when all previous tasks have succeeeded"  
					  (novas mudanças não serão necessarias)
		
		5.6.2 Na aba "Triggers" (essa etapa não é necessaria para o funcionamento da Pipeline, mas irá automatizar seu funcionamento em
		      caso de alguma auteração na branch main do Azure repos 
			5.6.2.1 Selecione a aba com nome de seu repositório e selecione a opção "Enable continuous integration"
				"Type" --> include
				"Branch specification" --> main
		5.6.3 Clique em "Save & queue", no espaço "Save comment" adicione um comentario de sua preferencia e seguida clique em "Save and run".
		      A Pipeline será iniciada imediatamente
 
6° Passo - Criar Realese
	6.1 Clique na aba PipeLine à esquerda e em seguida clique na opção "Releases", na tela que sugir em seguida clique no botão "New pipeline"
		6.1.1 Dentro da aba "Pipeline"
			6.1.2 Na janela "Select a template" selecione a opção "Azure App Service deployment"
			6.1.3 Clique na opção "+ Add an artifact", siga as configurações
			      "Project" --> selecione o projeto onde esta localizado o repositório Azure criado no 4° passo
			      "Source (build pipiline) --> selecione a pipeline criada no 5° passo
  			6.1.4 Dentro do espaço "Artefact" clique no icone com formato de raio para habilitar a trigger 
				6.1.4.1 clique na chave dentro em "Continuous deployment trigger" para que estaja em "Enabled"
		6.1.2 Clique da aba "Tasks" 
			6.1.2.1 Na aba Stage 1 siga as especificações
				"Azure subscription" --> "Azure Resource Manager connect" --> Escolha a assinatura associada com
					  	  com a criação de seu serviço de WebApp criado no 1° Passo
				"App service name" --> escolha o serviço de aplicativo criado no 1° Passo
				(Novas mudanças não serão necessarias)
		6.1.3 Clique em "Save" localizado no canto superior, direito da tela. Coloque um comentaria à sua escolha 
		6.1.4 Clique em "Create release" para começar rodar sua Release, na janela que abrir clique em Create, sua release rodará imediatamente

7° Passo - Retorne ao portal Azure, Clique no WebApp criado no 1° Passo
	7.1 Dentro da aba "Visão Geral" clique no "dominio padrão" e utilize seu WebApp
			

	
		
		










