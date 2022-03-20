set shell := ["powershell.exe", "-c"]

# Install all easily
install:
  git submodule init
  git submodule update

# Start Mysql, Arcturus Emulator & Nitro
start-all:
  docker-compose up -d

# Restart Arcturus Emulator
restart-arcturus:
  docker exec arcturus supervisorctl restart arcturus-emulator 

# Watch Arcturus's output
watch-arcturus:
  docker exec arcturus supervisorctl tail -f arcturus-emulator

# Enter in the Arcturus's shell:
shell-arcturus:
  docker exec -it arcturus bash