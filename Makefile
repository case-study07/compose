base_url := https://github.com/case-study07
admin_front := admin_front
end_front := end_front
admin_back := admin_back
end_back := end_back

## Local Environment SetUp
configure:
	@git clone ${base_url}/cs-admin-frontend ${admin_front}
	@git clone ${base_url}/cs-end-frontend ${end_front}
	@git clone ${base_url}/cs-admin-backend ${admin_back}
	@git clone ${base_url}/cs-end-backend ${end_back}
	
## Local Environment Operation
build:
	@docker compose build --no-cache

up:
	@docker compose up -d

down:
	@docker compose down

##  AdminFront Operation
af/add:
	@docker container exec -it $(admin_front) bash -c "yarn add $(package)"
	@docker container cp ${admin_front}:/app/node_modules $(PWD)/${admin_front}/node_modules

af/remove:
	@docker container exec -it $(admin_front) bash -c "yarn remove $(package)"
	@docker container cp ${admin_front}:/app/node_modules $(PWD)/${admin_front}/node_modules

af/logs:
	@docker container logs $(admin_front)

af/flogs:
	@docker container logs -f $(admin_front)

## EndFront Operation
ef/add:
	@docker container exec -it $(end_front) bash -c "yarn add $(package)"
	@docker container cp ${end_front}:/app/node_modules $(PWD)/${end_front}/node_modules

ef/remove:
	@docker container exec -it $(admin_front) bash -c "yarn remove $(package)"
	@docker container cp ${end_front}:/app/node_modules $(PWD)/${end_front}/node_modules

ef/logs:
	@docker container logs $(end_front)

ef/flogs:
	@docker container logs -f $(end_front)

## EndBack Operation
ef/add:
	@docker container exec -it $(end_back) bash -c "yarn add $(package)"
	@docker container cp ${end_back}:/app/node_modules $(PWD)/${end_back}/node_modules

ef/remove:
	@docker container exec -it $(end_back) bash -c "yarn remove $(package)"
	@docker container cp ${end_back}:/app/node_modules $(PWD)/${end_back}/node_modules

ef/logs:
	@docker container logs $(end_back)

ef/flogs:
	@docker container logs -f $(end_back)

## AdminBack Operation
ef/add:
	@docker container exec -it $(admin_back) bash -c "yarn add $(package)"
	@docker container cp ${admin_back}:/app/node_modules $(PWD)/${admin_back}/node_modules

ef/remove:
	@docker container exec -it $(admin_back) bash -c "yarn remove $(package)"
	@docker container cp ${admin_back}:/app/node_modules $(PWD)/${admin_back}/node_modules

ef/logs:
	@docker container logs $(admin_back)

ef/flogs:
	@docker container logs -f $(admin_back)