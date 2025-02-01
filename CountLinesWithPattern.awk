BEGIN{totalMa=0;totalAr=0}
/Ma/{totalMa++}
/Ar/{totalAr++}
END{print totalMa "Ma's";
    print totalAr "Ar's"}