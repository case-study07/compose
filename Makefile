base_url := https://raw.githubusercontent.com/case-study07/document/main/config/
enduser := enduser
admin := admin

configure:
	git clone https://github.com/case-study07/cs-end-backend ${enduser}
		cd ${PWD}/${enduser} && rm .prettierrc && curl ${base_url}.prettierrc > .prettierrc
		cd ${PWD}/${enduser} && rm tsconfig.json && curl ${base_url}tsconfig.json > tsconfig.json
		cd ${PWD}/${enduser} && rm Dockerfile && curl ${base_url}Dockerfile > Dockerfile
	git clone https://github.com/case-study07/cs-end-backend ${admin}
		cd ${PWD}/${admin} && rm .prettierrc && curl ${base_url}.prettierrc > .prettierrc
		cd ${PWD}/${admin} && rm tsconfig.json && curl ${base_url}tsconfig.json > tsconfig.json
		cd ${PWD}/${admin} && rm Dockerfile && curl ${base_url}Dockerfile > Dockerfile
		