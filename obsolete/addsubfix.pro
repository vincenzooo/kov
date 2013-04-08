function addSubfix,filename,subfix,newext
;add a subfix to filname (before the extension)
;if <newext> is provided use it to replace the extension.

message,"obsolete, use fnAddSubfix.pro"
stop

  ;------------------------------------------
	if n_elements(newext) eq 0 then newext=''

	dotposition=strsplit(filename,'.',count=c,/preserve_null)
	if c ne 0 then dotposition=dotposition[c-1]
	l=strlen(filename)
	return,strmid(filename,0,dotposition-1)+strtrim(subfix,2)+$
		strmid(filename,dotposition-1,l-1)
end

print,"-----------------"
filename='prova.txt'
subfix='xxx'
print,"name: ",filename," subfix:",subfix
print,addSubfix(filename,subfix)
print,"-----------------"
filename='cartella\incartella\prova.txt'
subfix='xxx'
print,"name: ",filename," subfix:",subfix
print,addSubfix(filename,subfix)
print,"-----------------"
filename='carte.lla\incar..tella\prova.txt'
subfix='xxx'
print,"name: ",filename," subfix:",subfix
print,addSubfix(filename,subfix)
print,"-----------------"
filename='prova.txt'
subfix=' xxx'
print,"name: ",filename," subfix: '",subfix,"'"
print,addSubfix(filename,subfix)
print,"-----------------"

end
