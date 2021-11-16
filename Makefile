base_url := https://github.com/case-study07
admin_front := admin_front
end_front := end_front
admin_back := admin_back
end_back := end_back

## This Makefile How to Use
help:
	@echo ""
	@echo "usage: make COMMAND"
	@echo ""
	@echo "Commands:"
	@echo "  configure                 local environment setup"
	@echo "  build                     local environment build"
	@echo "  up                        local environment start"
	@echo "  down                      local environment delete"
	@echo ""
	@echo "-- Admin Frontend Operation --"
	@echo "  af/add package="hoge"     yarn add Package"
	@echo "  af/devadd package="hoge"  yarn add -D Package"
	@echo "  af/remove package="hoge"  yarn remove Package"
	@echo ""
	@echo "-- End Frontend Operation --"
	@echo "  ef/devadd package="hoge"  yarn add -D Package"
	@echo "  ef/remove package="hoge"  yarn remove Package"
	@echo ""
	@echo "-- Admin Backend Operation --"
	@echo "  ab/add package="hoge"     yarn add Package"
	@echo "  ab/devadd package="hoge"  yarn add -D Package"
	@echo "  ab/remove package="hoge"  yarn remove Package"
	@echo ""
	@echo "-- End Backend Operation --"
	@echo "  eb/add package="hoge"     yarn add Package"
	@echo "  eb/devadd package="hoge"  yarn add Package"
	@echo "  eb/remove package="hoge"  yarn remove Package"

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

af/devadd:
	@docker container exec -it $(admin_front) bash -c "yarn add -D $(package)"
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

ef/devadd:
	@docker container exec -it $(end_front) bash -c "yarn add -D $(package)"
	@docker container cp ${end_front}:/app/node_modules $(PWD)/${end_front}/node_modules

ef/remove:
	@docker container exec -it $(admin_front) bash -c "yarn remove $(package)"
	@docker container cp ${end_front}:/app/node_modules $(PWD)/${end_front}/node_modules

ef/logs:
	@docker container logs $(end_front)

ef/flogs:
	@docker container logs -f $(end_front)

## EndBack Operation
eb/add:
	@docker container exec -it $(end_back) bash -c "yarn add $(package)"
	@docker container cp ${end_back}:/app/node_modules $(PWD)/${end_back}/node_modules

eb/devadd:
	@docker container exec -it $(end_back) bash -c "yarn add -D $(package)"
	@docker container cp ${end_back}:/app/node_modules $(PWD)/${end_back}/node_modules

eb/remove:
	@docker container exec -it $(end_back) bash -c "yarn remove $(package)"
	@docker container cp ${end_back}:/app/node_modules $(PWD)/${end_back}/node_modules

eb/logs:
	@docker container logs $(end_back)

eb/flogs:
	@docker container logs -f $(end_back)

## AdminBack Operation
ab/add:
	@docker container exec -it $(admin_back) bash -c "yarn add $(package)"
	@docker container cp ${admin_back}:/app/node_modules $(PWD)/${admin_back}/node_modules

ab/devadd:
	@docker container exec -it $(admin_back) bash -c "yarn add -D $(package)"
	@docker container cp ${admin_back}:/app/node_modules $(PWD)/${admin_back}/node_modules

ab/remove:
	@docker container exec -it $(admin_back) bash -c "yarn remove $(package)"
	@docker container cp ${admin_back}:/app/node_modules $(PWD)/${admin_back}/node_modules

ab/logs:
	@docker container logs $(admin_back)

ab/flogs:
	@docker container logs -f $(admin_back)