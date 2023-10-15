function fm_call(flag)


%FM_CALL calls component equations
%
%FM_CALL(CASE)
%  CASE '1'  algebraic equations
%  CASE 'pq' load algebraic equations
%  CASE '3'  differential equations
%  CASE '1r' algebraic equations for Rosenbrock method
%  CASE '4'  state Jacobians
%  CASE '0'  initialization
%  CASE 'l'  full set of equations and Jacobians
%  CASE 'kg' as "L" option but for distributed slack bus
%  CASE 'n'  algebraic equations and Jacobians
%  CASE 'i'  set initial point
%  CASE '5'  non-windup limits
%
%see also FM_WCALL

fm_var

switch flag


 case 'gen'

  Line = gcall(Line);
  gcall(Ind)

 case 'load'

  gcall(Ind)
  gisland(Bus)

 case 'gen0'

  Line = gcall(Line);
  gcall(Ind)

 case 'load0'

  gcall(Ind)
  gisland(Bus)

 case '3'

  fcall(Syn)
  fcall(Ind)

 case '1r'

  Line = gcall(Line);
  Syn = gcall(Syn);
  gcall(Ind)
  SW = gcall(SW);
  gisland(Bus)

 case 'series'

  Line = gcall(Line);
  gisland(Bus)

 case '4'

  DAE.Fx = sparse(DAE.n,DAE.n);
  DAE.Fy = sparse(DAE.n,DAE.m);
  DAE.Gx = sparse(DAE.m,DAE.n);
  Fxcall(Syn)
  Fxcall(Ind)

 case '0'

  Syn = setx0(Syn);

 case 'fdpf'

  Line = gcall(Line);
  gcall(Ind)
  SW = gcall(SW);
  gisland(Bus)

 case 'l'

  Line = gcall(Line);
  gcall(Ind)
  SW = gcall(SW);
  gisland(Bus)
  Gycall(Line)
  Gycall(Ind)
  Gycall(SW)
  Gyisland(Bus)


  fcall(Ind)

  DAE.Fx = sparse(DAE.n,DAE.n);
  DAE.Fy = sparse(DAE.n,DAE.m);
  DAE.Gx = sparse(DAE.m,DAE.n);
  Fxcall(Ind)
  Fxcall(SW)

 case 'kg'

  Line = gcall(Line);
  Syn = gcall(Syn);
  gcall(Ind)
  gisland(Bus)
  Gycall(Line)
  Syn = Gycall(Syn);
  Gycall(Ind)
  Gyisland(Bus)


  fcall(Syn)
  fcall(Ind)

  DAE.Fx = sparse(DAE.n,DAE.n);
  DAE.Fy = sparse(DAE.n,DAE.m);
  DAE.Gx = sparse(DAE.m,DAE.n);
  Fxcall(Syn)
  Fxcall(Ind)

 case 'kgpf'

  global PV SW
  Line = gcall(Line);
  gcall(Ind)
  PV = gcall(PV);
  greactive(SW)
  glambda(SW,1,DAE.kg)
  gisland(Bus)
  Gycall(Line)
  Gycall(Ind)
  Gycall(PV)
  Gyreactive(SW)
  Gyisland(Bus)


  fcall(Ind)

  DAE.Fx = sparse(DAE.n,DAE.n);
  DAE.Fy = sparse(DAE.n,DAE.m);
  DAE.Gx = sparse(DAE.m,DAE.n);
  Fxcall(Ind)

 case 'n'

  Line = gcall(Line);
  Syn = gcall(Syn);
  gcall(Ind)
  SW = gcall(SW);
  gisland(Bus)
  Gycall(Line)
  Syn = Gycall(Syn);
  Gycall(Ind)
  Gycall(SW)
  Gyisland(Bus)


 case 'i'

  Line = gcall(Line);
  Syn = gcall(Syn);
  gcall(Ind)
  SW = gcall(SW);
  gisland(Bus)
  Gycall(Line)
  Syn = Gycall(Syn);
  Gycall(Ind)
  Gycall(SW)
  Gyisland(Bus)


  fcall(Syn)
  fcall(Ind)

  if DAE.n > 0
  DAE.Fx = sparse(DAE.n,DAE.n);
  DAE.Fy = sparse(DAE.n,DAE.m);
  DAE.Gx = sparse(DAE.m,DAE.n);
  end 

  Fxcall(Syn)
  Fxcall(Ind)
  Fxcall(SW)

 case '5'

  windup(Ind)

end
