
run-promtail:
	docker run --rm \
	-v ${PWD}/promtail.yaml:/etc/promtail/docker-config.yaml \
	-v ${PWD}/file.log:/var/log/file.log \
	-v ${PWD}/positions.yaml:/root/positions.yaml:rw \
	grafana/promtail:2.0.0 \
	-config.file=/etc/promtail/docker-config.yaml
