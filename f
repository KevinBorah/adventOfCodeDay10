input={34,88,2,222,254,93,150,0,199,255,39,32,137,136,1,167};
pos=0;skipSize=0;l=Range[0,255];

Do[
    l=RotateLeft[l,pos];
    l[[;;i]]=Reverse[l[[;;i]]];
    l=RotateRight[l,pos];
    pos=Mod[pos+i+skipSize,Length[l]];
    skipSize++
,{i,input}];

Print[l[[1]]*l[[2]]]
