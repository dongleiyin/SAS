# merge column "comb" group by newupid
data seq_defined;
length seq $100.;
   do until (last.newupid);
      set indata;
        by newupid ad_day dis_day;
        seq2=cats('',seq,comb);
   end;
   drop comb;
run;
