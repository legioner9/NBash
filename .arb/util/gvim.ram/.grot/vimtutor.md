# main chapt

## mean
    ^ Cntl
    % Shift
    @ Alt
    * Esc
    Ins insert key
    Tab Tabulate
    Ent
    # natural num 
    prv previous
    wrd word
    chr char
    brc bracket
    crs cursor
    act action
    dbl double
    dlt delete
    rght right
    lft left
    up up
    dwn down
    acpn active panel
    pspn passive panel
    clpb clipboard
    
    srch search
    rpls replace
    regx regexp
    cmnd command
    
    freq_use freequently used
    bin_repr binary representation
    sel_bl select block
    cat_fn quick view fn

    <nnum> natural num 
    cli command line
    spw select pont window
    ttw typing text window
    tts typing text string
    ted typing editor
    wnd window
    mch match
    
    fst first
    nxt next
    lst last
    prv previous
    wrd word
    chr char
    prf paragraph
    brc bracket
    crs cursor
    rgs register
    mcr macros
    cur current
    act action
    dbl double
    dlt delete
    rght right
    lft left
    up up
    dwn down
    acpn active panel
    pspn passive panel
    clpb clipboard
    blk block
    
    srch search
    rpls replace
    regx regexp
    cmnd command
    
    freq_use freequently used
    bin_repr binary representation
    sel_bl select block
    cat_fn quick view fn

    <nnum> natural num 
    
    dr directory
    fl file
    sd subdir
    nm name
    en entety
    pth full path

    dir_pth dirname
    base_pth basename
    
    bfr buffer
    cli command line
    spw select pont window
    ttw typing text window
    tts typing text string
    ted typing editor
    wnd window
    mch match
    mrk mark
    
    fst first
    nxt next
    lst last
    prv previous
    wrd word
    snt sentence
    chr char
    brc bracket
    crs cursor
    act action
    dbl double
    dlt delete
    rght right
    lft left
    up up
    dwn down
    bef before
    acpn active panel
    pspn passive panel
    clpb clipboard
    
    srch search
    rpls replace
    regx regexp
    cmnd command
    
    freq_use freequently used
    bin_repr binary representation
    sel_bl select block
    cat_fn quick view fn

    <nnum> natural num 
    <wrd> word

## Navigaton 
    h j k l as arrow
    w fst_chr_nxt_wrd (go)
    e lst_chr_nxt_wrd (go)
    0 fst_chr_str (go)
    $ lst_chr_str (go)
    %g lst_str_fl
    gg fst_str_fl

    * srch wrd in crs dwn_way in fl
    # srch wrd in crs up_way in fl
    f-chr srch chr dwn_way in str
    F-chr srch chr up_way in str

    ^f scroll down screen
    ^b scroll up screen
    ^d scroll down half screen
    ^u scroll up half screen

    m-chr put mrk
    `-chr go to mrk
    
    (/) dwn/up snt
    {/} dwn/up prf
    ^w-^w nxt_wnd

## Action Main Mode
    d del (mact)
    y cpy (mact)
    p pst (mact)

    x del_chr at crs
    r rpl_chr at crs

    yy - cpy str (dact)
    dd - dlt str (dact)

    c - d+i

    u - undo
    U - undo for string
    ^r - redo

    . - repeat lst cmd

### Combine Action Main Mode
#### num act
    <nnum>(mact)(go)
    <nnum>(dact)
    <nnum>%g 

## Registers (variables)
    "-chr rgs with name <chr>
### Special
    0 - lst copied blk
    + - blk from clipboard
## Macros
    q-chr start record mcr <chr>
    q - stop record macros
    @-chr do mcr <chr> 

## Ins modes
    a - ins bef crs
    A - ins in end wrd
    i - ins in crs
    I - ins bef fst chr str 
## Visual modes
    v - by chr
    %v - by str
    ^v - by blk

## Info
    ^g - info fl

## %
    crs at bct - mark pair bct

## o, O
    o - j+i
    O - k+i

## %r
    ins to str over char (put str to str

## :
    Tab - loop win_word at this position 
    <wrd>^d - list vim_wrd start with <wrd>       
    w - wright
    q - quite (exit)
    set - options

### :set
    no<wrd> - invret 
    ic - ignor registr
    hls - hlight srh
    is - live srh
### :registers
    all cur rgs

### rpl what to then
    s/<what>/<then> fst_mch in str
    s/<what>/<then>/g all_mch in str
    <#1>,<#2>s/<what>/<then>/g all_mch in rng str from <#1> to <#2>
    %s/<what>/<then>/g all_mch in fl
    %s/<what>/<then>/gc _mch in fl with question

### wright blk
- in v_mod hlght blk
- wrght blk to fl
    '<,'>w <nm_fl>

### cmd in shell
    !<cmd>Ent

### insert fl to dwn crs
    r <nm_fl>

## / down srch, ? up srch

    <wrd>Ent
        n - nxt mch 
        ^o - nxt mch
        ^i - prv mch


## EXAM
- v/a<Ent>d - hlght blk from crs to chr a and dlt his
- ve"ay - cpy blk from crs to lst chr wrd into rgs <a>
- "ap - ins rgs a into crs
- qb"ap - rec mcr b as "ap

## Ancs
- https://habr.com/ru/articles/342562/ vimscru