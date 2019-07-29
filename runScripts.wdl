task hello_world {
	command {
		python /code/hello-world.py
	}
	output {
		File hello_world_file = 'hello-world.txt'
	}
	runtime {
		docker: 'cherry101/hello-world@sha256:403f2e648910c6e0d29bff183233a28569b19e68d1795865b03f865e837525ca'
	}
}

workflow main {
	call hello_world
}

