tmp1=`lpq -Ppsts | wc -l`
tmp2=`lpq -Ppsts-sx | wc -l`
tmp3=`lpq -Ppsts-dx | wc -l`
p1=$(($tmp1+$tmp2+$tmp3))

tmp1=`lpq -Ppstsb | wc -l`
tmp2=`lpq -Ppstsb-sx | wc -l`
tmp3=`lpq -Ppstsb-dx | wc -l`
p2=$(($tmp1+$tmp2+$tmp3))

tmp1=`lpq -Ppstsc | wc -l`
tmp2=`lpq -Ppstsc-sx | wc -l`
tmp3=`lpq -Ppstsc-dx | wc -l`
p3=$(($tmp1+$tmp2+$tmp3))


if [ $p1 -le $p2 -a $p1 -le $p3 ]
then
        echo "psts-dx"
        #lpr -Ppsts-dx to_print/*.ps
elif [ $p2 -le $p3 ]
then
        echo "pstsb-dx"
        #lpr -Ppstsb-dx to_print/*.ps
else
        echo "pstsc-dx"
        #lpr -Ppstsc-dx to_print/*.ps
fi