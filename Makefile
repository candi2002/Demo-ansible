# Biến
GIT = git
GIT_REPO = git@github.com:candi2002/Demo-ansible.git
BRANCH = main

# Mục tiêu mặc định
default: push

# Kéo thay đổi từ GitHub
pull:
	@$(GIT) pull $(GIT_REPO) $(BRANCH)

# Đẩy thay đổi lên GitHub
push:
	@$(GIT) add .
	@$(GIT) commit -m "Auto commit"
	@$(GIT) push $(GIT_REPO) $(BRANCH)

# Mục tiêu hoàn chỉnh để kéo và đẩy
update: pull push
