## this rbld_res_md.sh

rbld all REPOBARE/_repo/NBash/.arb/util/{{NAME}}.ram/.grot/opus.d/one.d/cntx.res.md_ufl9
rbld all REPOBARE/_repo/NBash/.arb/util/{{NAME}}/.grot/opus.d/{{NAME_SD}}/.ins_dr/001.sed.d/res.md_ufl9

bld REPOBARE/_repo/NBash/.d/.opus/.ins_dr/{{NAME_SD}}/res.md_ufl9
bld REPOBARE/_repo/NBash/.d/.opus/cntx.res.md_ufl9

## \<OPUS_PATH> корневая opus dr

## \<OPUS_PATH>/.ins_dr dr with inner sd_opus gig ufl_stl0_9

sd_opus - opus лежащая в поддиректориях - в нашем случае в \<OPUS_PATH>/.ins_dr/\<name_opus>
itterator [список \<name_opus>] - одномерный иттератор

## \<OPUS_PATH>/.d/.lst/out_opus_lst_arb.lst list path to outer .arb with arb_opus gig ufl_stl0_11

arb_opus - opus лежащая в \<root>/.arb/\<name_arb>/\<name_ram>.ram/.grot/opus.d/\<name_opus>
itterator [список \<name_arb>  [список \<name_ram> [список \<name_opus>] ] ] - трехмерный иттератор