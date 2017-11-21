GetEnv:
ebp : 0x22c
char *home     :   0x21c -> 0x19c
char *username :   0x19c -> 0x11c
char *shell    :   0x11c -> 0x09c
char *path     :   0x09c -> 0x01c

char *ptr :    0x01c -> 0x018
ebp

   0x080484a4 <+0>:  push   %ebp
   0x080484a5 <+1>:  mov    %esp,%ebp
   0x080484a7 <+3>:  push   %edi
   0x080484a8 <+4>:  push   %esi
   0x080484a9 <+5>:  push   %ebx
   0x080484aa <+6>:  sub    $0x22c,%esp
   0x080484b0 <+12>: movl   $0x80487f0,(%esp)
   0x080484b7 <+19>: call   0x80483a0 <getenv@plt>
   0x080484bc <+24>: mov    %eax,-0x1c(%ebp)
   0x080484bf <+27>: cmpl   $0x0,-0x1c(%ebp)
   0x080484c3 <+31>: jne    0x80484dd <GetEnv+57>
   0x080484c5 <+33>: movl   $0x80487f5,(%esp)
   0x080484cc <+40>: call   0x80483b0 <puts@plt>
   0x080484d1 <+45>: movl   $0x0,(%esp)
   0x080484d8 <+52>: call   0x80483d0 <exit@plt>
   0x080484dd <+57>: mov    -0x1c(%ebp),%eax
   0x080484e0 <+60>: mov    %eax,0x4(%esp)
   0x080484e4 <+64>: lea    -0x21c(%ebp),%eax
   0x080484ea <+70>: mov    %eax,(%esp)
   0x080484ed <+73>: call   0x8048390 <strcpy@plt>
   0x080484f2 <+78>: movl   $0x804880a,(%esp)
   0x080484f9 <+85>: call   0x80483a0 <getenv@plt>
   0x080484fe <+90>: mov    %eax,-0x1c(%ebp)
   0x08048501 <+93>: cmpl   $0x0,-0x1c(%ebp)
   0x08048505 <+97>: jne    0x804851f <GetEnv+123>
   0x08048507 <+99>: movl   $0x8048813,(%esp)
   0x0804850e <+106>:   call   0x80483b0 <puts@plt>
   0x08048513 <+111>:   movl   $0x0,(%esp)
   0x0804851a <+118>:   call   0x80483d0 <exit@plt>
   0x0804851f <+123>:   mov    -0x1c(%ebp),%eax
   0x08048522 <+126>:   mov    %eax,0x4(%esp)
   0x08048526 <+130>:   lea    -0x21c(%ebp),%eax
   0x0804852c <+136>:   sub    $0xffffff80,%eax
   0x0804852f <+139>:   mov    %eax,(%esp)
   0x08048532 <+142>:   call   0x8048390 <strcpy@plt>
   0x08048537 <+147>:   movl   $0x804882c,(%esp)
   0x0804853e <+154>:   call   0x80483a0 <getenv@plt>
   0x08048543 <+159>:   mov    %eax,-0x1c(%ebp)
   0x08048546 <+162>:   cmpl   $0x0,-0x1c(%ebp)
   0x0804854a <+166>:   jne    0x8048564 <GetEnv+192>
   0x0804854c <+168>:   movl   $0x8048832,(%esp)
   0x08048553 <+175>:   call   0x80483b0 <puts@plt>
   0x08048558 <+180>:   movl   $0x0,(%esp)
   0x0804855f <+187>:   call   0x80483d0 <exit@plt>
   0x08048564 <+192>:   mov    -0x1c(%ebp),%eax
   0x08048567 <+195>:   mov    %eax,0x4(%esp)
   0x0804856b <+199>:   lea    -0x21c(%ebp),%eax
   0x08048571 <+205>:   add    $0x100,%eax
   0x08048576 <+210>:   mov    %eax,(%esp)
   0x08048579 <+213>:   call   0x8048390 <strcpy@plt>
   0x0804857e <+218>:   movl   $0x8048848,(%esp)
   0x08048585 <+225>:   call   0x80483a0 <getenv@plt>
   0x0804858a <+230>:   mov    %eax,-0x1c(%ebp)
   0x0804858d <+233>:   cmpl   $0x0,-0x1c(%ebp)
   0x08048591 <+237>:   jne    0x80485ab <GetEnv+263>
   0x08048593 <+239>:   movl   $0x804884d,(%esp)
   0x0804859a <+246>:   call   0x80483b0 <puts@plt>
   0x0804859f <+251>:   movl   $0x0,(%esp)
   0x080485a6 <+258>:   call   0x80483d0 <exit@plt>
   0x080485ab <+263>:   mov    -0x1c(%ebp),%eax
   0x080485ae <+266>:   mov    %eax,0x4(%esp)
   0x080485b2 <+270>:   lea    -0x21c(%ebp),%eax
   0x080485b8 <+276>:   add    $0x180,%eax
   0x080485bd <+281>:   mov    %eax,(%esp)
   0x080485c0 <+284>:   call   0x8048390 <strcpy@plt>

   0x080485c5 <+289>:   mov    0x8(%ebp),%eax ; eax = env
   0x080485c8 <+292>:   lea    -0x21c(%ebp),%edx ; edx = home
   0x080485ce <+298>:   mov    $0x200,%ebx ; ebx = 0x200
   0x080485d3 <+303>:   mov    %eax,%ecx ; ecx = env
   0x080485d5 <+305>:   and    $0x1,%ecx ; ecx = env & 1
   
   0x080485d8 <+308>:   test   %ecx,%ecx ; ecx == 0 ?
   if (ecx == 0)
      0x080485da <+310>:   je     0x80485ea <GetEnv+326>
   else
      0x080485dc <+312>:   movzbl (%edx),%ecx ; ecx = *home
      0x080485df <+315>:   mov    %cl,(%eax) ; eax = *home
      0x080485e1 <+317>:   add    $0x1,%eax ; eax = *home + 1
      0x080485e4 <+320>:   add    $0x1,%edx ; edx = home + 1
      0x080485e7 <+323>:   sub    $0x1,%ebx ; ebx = 0x1ff

   0x080485ea <+326>:   mov    %eax,%ecx 
   0x080485ec <+328>:   and    $0x2,%ecx
   0x080485ef <+331>:   test   %ecx,%ecx
   0x080485f1 <+333>:   je     0x8048602 <GetEnv+350>
   0x080485f3 <+335>:   movzwl (%edx),%ecx
   0x080485f6 <+338>:   mov    %cx,(%eax)
   0x080485f9 <+341>:   add    $0x2,%eax
   0x080485fc <+344>:   add    $0x2,%edx
   0x080485ff <+347>:   sub    $0x2,%ebx

   0x08048602 <+350>:   mov    %ebx,%ecx
   0x08048604 <+352>:   shr    $0x2,%ecx
   0x08048607 <+355>:   mov    %eax,%edi
   0x08048609 <+357>:   mov    %edx,%esi
   0x0804860b <+359>:   rep movsl %ds:(%esi),%es:(%edi) ; esi->edi 
   0x0804860d <+361>:   mov    %esi,%edx
   0x0804860f <+363>:   mov    %edi,%eax
   0x08048611 <+365>:   mov    $0x0,%ecx
   0x08048616 <+370>:   mov    %ebx,%esi
   0x08048618 <+372>:   and    $0x2,%esi
   0x0804861b <+375>:   test   %esi,%esi
   0x0804861d <+377>:   je     0x804862a <GetEnv+390>
   0x0804861f <+379>:   movzwl (%edx,%ecx,1),%esi
   0x08048623 <+383>:   mov    %si,(%eax,%ecx,1)
   0x08048627 <+387>:   add    $0x2,%ecx

   0x0804862a <+390>:   and    $0x1,%ebx
   0x0804862d <+393>:   test   %ebx,%ebx
   0x0804862f <+395>:   je     0x8048638 <GetEnv+404>
   0x08048631 <+397>:   movzbl (%edx,%ecx,1),%edx
   0x08048635 <+401>:   mov    %dl,(%eax,%ecx,1)

   0x08048638 <+404>:   mov    0x8(%ebp),%eax
   0x0804863b <+407>:   add    $0x22c,%esp
   0x08048641 <+413>:   pop    %ebx
   0x08048642 <+414>:   pop    %esi
   0x08048643 <+415>:   pop    %edi
   0x08048644 <+416>:   pop    %ebp
   0x08048645 <+417>:   ret    $0x4


main:


esp : ebp - 0x418
struct EnvInfo envtmp   : 0x418 -- 0x218
struct EnvInfo env      : 0x218 -- 0x018
{
   home : 0x000 -> 0x080 // 218 -> 198
   home : 0x080 -> 0x100 // 198 -> 118
   home : 0x100 -> 0x180 // 118 -> 098
   home : 0x180 -> 0x180 // 098 -> 018
}


ebp      


   0x08048648 <+0>:	lea    0x4(%esp),%ecx
   0x0804864c <+4>:	and    $0xfffffff0,%esp
   0x0804864f <+7>:	pushl  -0x4(%ecx)
   0x08048652 <+10>:	push   %ebp
   0x08048653 <+11>:	mov    %esp,%ebp
   0x08048655 <+13>:	push   %edi
   0x08048656 <+14>:	push   %esi
   0x08048657 <+15>:	push   %ebx
   0x08048658 <+16>:	push   %ecx
   0x08048659 <+17>:	sub    $0x418,%esp
   0x0804865f <+23>:	movl   $0x8048862,(%esp)
   0x08048666 <+30>:	call   0x80483b0 <puts@plt>
   0x0804866b <+35>:	lea    -0x418(%ebp),%eax
   0x08048671 <+41>:	mov    %eax,(%esp)
   0x08048674 <+44>:	call   0x80484a4 <GetEnv>
   0x08048679 <+49>:	sub    $0x4,%esp
   0x0804867c <+52>:	lea    -0x218(%ebp),%edx
   0x08048682 <+58>:	lea    -0x418(%ebp),%ebx
   0x08048688 <+64>:	mov    $0x80,%eax
   0x0804868d <+69>:	mov    %edx,%edi
   0x0804868f <+71>:	mov    %ebx,%esi
   0x08048691 <+73>:	mov    %eax,%ecx
   0x08048693 <+75>:	rep movsl %ds:(%esi),%es:(%edi) ; edi : env ; esi : env2 ; ecx : 0x8
   0x08048695 <+77>:	mov    $0x8048875,%eax
   0x0804869a <+82>:	lea    -0x218(%ebp),%edx
   0x080486a0 <+88>:	mov    %edx,0x4(%esp)
   0x080486a4 <+92>:	mov    %eax,(%esp)
   0x080486a7 <+95>:	call   0x8048380 <printf@plt>
   0x080486ac <+100>:	mov    $0x8048884,%eax
   0x080486b1 <+105>:	lea    -0x218(%ebp),%edx
   0x080486b7 <+111>:	sub    $0xffffff80,%edx
   0x080486ba <+114>:	mov    %edx,0x4(%esp)
   0x080486be <+118>:	mov    %eax,(%esp)
   0x080486c1 <+121>:	call   0x8048380 <printf@plt>
   0x080486c6 <+126>:	mov    $0x8048893,%eax
   0x080486cb <+131>:	lea    -0x218(%ebp),%edx
   0x080486d1 <+137>:	add    $0x100,%edx
   0x080486d7 <+143>:	mov    %edx,0x4(%esp)
   0x080486db <+147>:	mov    %eax,(%esp)
   0x080486de <+150>:	call   0x8048380 <printf@plt>
   0x080486e3 <+155>:	mov    $0x80488a2,%eax
   0x080486e8 <+160>:	lea    -0x218(%ebp),%edx
   0x080486ee <+166>:	add    $0x180,%edx
   0x080486f4 <+172>:	mov    %edx,0x4(%esp)
   0x080486f8 <+176>:	mov    %eax,(%esp)
   0x080486fb <+179>:	call   0x8048380 <printf@plt>
   0x08048700 <+184>:	mov    $0x0,%eax
   0x08048705 <+189>:	lea    -0x10(%ebp),%esp
   0x08048708 <+192>:	pop    %ecx
   0x08048709 <+193>:	pop    %ebx
   0x0804870a <+194>:	pop    %esi
   0x0804870b <+195>:	pop    %edi
   0x0804870c <+196>:	pop    %ebp
   0x0804870d <+197>:	lea    -0x4(%ecx),%esp
   0x08048710 <+200>:	ret