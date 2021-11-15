base_url := https://github.com/case-study07
admin_front := admin_front
end_front := end_front
admin_back := admin_back
end_back := end_back

configure:
	@git clone ${base_url}/cs-admin-frontend ${admin_front}
	@git clone ${base_url}/cs-end-frontend ${end_front}
	@git clone ${base_url}/cs-admin-backend ${admin_back}
	@git clone ${base_url}/cs-end-backend ${end_back}
	
build:
	@docker compose build --no-cache

up:
	@docker compose up -d

down:
	@docker compose down