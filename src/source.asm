INCLUDE irvine32.inc
.data 
array word 10,20,30,40
.code
main proc
mov eax,0
mov esi, offset array
add ax, [esi] 
add esi,2
add ax,[esi]
add esi,2
add ax, [esi] 
add esi,2
add ax, [esi] 
add esi,2
call writeint
exit
main endp
end main