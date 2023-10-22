%open_system('system_back_end.mdl');
initpsat;
load_system('system_back_end.mdl');
runpsat('system_back_end.mdl','data');
runpsat('pf');
Vm = DAE.y(Bus.v);
Vm = Vm*11;
gen_power = DAE.y(Syn.p);
gen_power(isnan(gen_power))=0;
gen_power_rating = Syn.con(:,2)*1000;
gen_voltage_rating = Syn.con(:,3);
gen_frequency_rating = Syn.con(:,4);
bus_active_power_generated = Bus.Pg;
bus_active_power_generated(isnan(bus_active_power_generated))=0;
bus_reactive_power_generated = Bus.Qg;
bus_reactive_power_generated(isnan(bus_reactive_power_generated))=0;
bus_active_power_load = Bus.Pl;
bus_active_power_load(isnan(bus_active_power_load))=0;
bus_reactive_power_load = Bus.Ql;
bus_reactive_power_load(isnan(bus_reactive_power_load))=0;
bus_voltage_rating = Bus.con(:,2);
trafo_voltage_from = Line.con(:,4);
trafo_voltage_ratio = Line.con(:,7);
trafo_voltage_to = trafo_voltage_from./trafo_voltage_ratio;


