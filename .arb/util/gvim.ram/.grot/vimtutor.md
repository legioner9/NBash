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
    
    fst first
    nxt next
    lst last
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
    <wrd> word

## Navigaton 

    h j k l as arrow
    w fst_chr_nxt_wrd (go)
    e lst_chr_nxt_wrd (go)
    0 fst_chr_str (go)
    $ lst_chr_str (go)
    %g lst_str_fl
    gg fst_str_fl

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

### Combine Action Main Mode
#### num act
    <nnum>(mact)(go)
    <nnum>(dact)
    <nnum>%g 
## Info
    ^g - info fl

## %

    crs at bct - mark pair bct

## :

    w - wright
    q - quite (exit)
    set - options

### rpl what to then

    s/<what>/<then> fst_mch in str
    s/<what>/<then>/g all_mch in str
    <#1>,<#2>s/<what>/<then>/g all_mch in rng str from <#1> to <#2>
    %s/<what>/<then>/g all_mch in fl
    %s/<what>/<then>/gc _mch in fl with question

### cmd in shell
    !<cmd>Ent
## / down srch, ? up srch

    <wrd>Ent
        n - nxt mch 
        ^o - nxt mch
        ^i - prv mch


    
