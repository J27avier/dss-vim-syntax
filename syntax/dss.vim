" Vim syntax file
" Language: OpenDSS
" Maintainer: Javier Sao
" Latest revision: 31/05/22

if exists("b:current_syntax")
  finish
endif

syn case ignore

syn keyword Keywords1 new edit more m ~ select save show solve enable disable plot reset compile set dump open close redirect help quit ? next panel sample clear about calcv calcvoltagebases SetkVBase BuildY get init export fileedit voltages currents powers seqvoltages seqcurrents seqpowers losses phaselosses cktlosses allocateloads formedit totals capacity classes userclasses Zsc Zsc10 ZscRefresh Ysc puvoltages VarValues Varnames Buscoords MakeBusList MakePosSeq Reduce Interpolate AlignFile TOP Rotate Vdiff Summary Distribute DI_plot Comparecases YearlyCurves CD Visualize CloseDI DOScmd Estimate Reconductor  _InitSnap _SolveNoControl _SampleControls _DoControlActions _ShowControlQueue _SolveDirect _SolvePFlow AddBusMarker Guids SetLoadAndGenKV CvrtLoadshapes NodeDiff Rephase SetBusXY UpdateStorage Obfuscate LatLongCoords BatchEdit Pstcalc Variable ReprocessBuses ClearBusMarkers RelCalc var

syn keyword Keywords2 CAPACITOR CAPCONTROL CIRCUIT CNDATA ENERGYMETER EXECUTIVE FAULT FUSE GENDISPATCHER GENERATOR GICLINE GICTRANSFORMER GROWTHSHAPE INVCONTROL ISOURCE LINE LINECODE LINEGEOMETRY LINESPACING LOAD LOADSHAPE MONITOR PRICESHAPE PVSYSTEM REACTOR RECLOSER REGCONTROL RELAY SENSOR SOLUTION SPECTRUM STORAGE STORAGECONTROLLER SWTCONTROL TCC_CURVE TRANSFORMER TSDATA TSHAPE VSCONVERTER VSOURCE WIREDATA XFMRCODE XYCURVE

syn keyword Keywords3 %growth %imag %mag %mean %Normal %R %stddev 46%Pickup 46BaseAmps 46isqt 47%Pickup action addtype algorithm allocationfactor allocationfactors allowduplicates amps angle autobuslist band baseFreq basefrequency basekv Breakertime bus bus1 bus2 buses C_array c0 c1 capacitor capkVAR casename cktmodel class cmatrix conn conns controlmode csvfile CT CTprim CTratio cuf D daily datapath dblfile DeadTime debugtrace defaultdaily defaultyearly delay DelayOFF DemandInterval dispmode dispvalue DIVerbose duty editor elem element emergamps emerghkVA emergvmaxpu emergvminpu enabled faultrate Feeder flrise forceon frequency FuseCurve genkw GenList genmult genpf Gmatrix Groundcurve GroundDelayed GroundFast GroundInst GroundTrip growth h Harm harmonic harmonics hour hsrise interval inversetime Isc1 Isc3 KeepList Kron kV kVA kvar kvarlimit kVAs kvbase kVs kW kWBand kwemerg kWLimit kwnormal LDCurve length like linecode ln loadloss loadmodel loadmult LocalOnly log lossregs lossweight m markercode Mask maxcontroliter maxiter maxkvar MaxTap maxtapchange mean MinAmps minkvar MinTap mode model MonitoredObj MonitoredTerm mult MVA MVAsc1 MVAsc3 n nodes nodewidth noloadloss normamps normhkVA normvmaxpu normvminpu nphases npts number NumFast NumHarm Numsteps NumTaps object OFFsetting ONsetting ONtime option overtrip Overvoltcurve pctperm peakcurrent pf Phasecurve PhaseDelayed PhaseFast PhaseInst phases PhaseTrip ppm ppm_antifloat PPolar pricecurve pricesignal pt ptratio pu pvfactor qmult R r0 r1 radial random RatedCurrent RecloseIntervals ReduceOption repair Reset residual revband reversible revR revvreg revX Rg rho rmatrix Rneut ScanType sec ShaftData ShaftModel Shots sngfile spectrum states status stddev stepsize sub subname Switch SwitchedObj SwitchedTerm T_array tap tapdelay taps temporary terminal thermal time tolerance tracecontrol transformer trapezoidal type ueregs ueweight undertrip Undervoltcurve units UserData UserModel Variable VIPolar Vmax Vmaxpu Vmin Vminemerg Vminnorm Vminpu voltagebases VoltOverride Vpu vreg wdg winding windings X x0 x0r0 x1 x1r1 Xd Xdp Xdpp xfkVA Xg Xhl Xht XL Xlt xmatrix Xneut Xscarray year yearly Zonelist zonelock buses currents convergence elements faults generators losses meters powers voltages zone taps isolated ratings variables loops busflow lineconstants y yprim controlqueue topology mismatch kvbasemismatch deltaV QueryLog Controlled


" Match numbers
" Integer with - + or nothing in front
syn match dssNumber '\d\+'
syn match dssNumber '[-+]\d\+'

" Floating point number with decimal no E or e 
syn match dssNumber '[-+]\d\+\.\d*'

" Floating point like number with E and no decimal point (+,-)
syn match dssNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match dssNumber '\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match dssNumber '\w\+\d\+'

" Floating point like number with E and decimal point (+,-)
syn match dssNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match dssNumber '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'

" Match comments
syn match dssComment "//.*$" 
syn match dssComment "!.*$" 

" Match comment regions
syn region dssCommentBlock start="/\*" end="\*/" 

" Match string region
syn region  dssString start=+"+  skip=+\\\\\|\\$"+  end=+"+
syn region  dssString start=+'+  skip=+\\\\\|\\$'+  end=+'+

" Links
hi def link Keywords1       Statement
hi def link Keywords2       Type   
hi def link Keywords3       Function 
hi def link dssNumber       Constant   
hi def link dssComment      Comment
hi def link dssCommentBlock Comment
hi def link dssString        String
