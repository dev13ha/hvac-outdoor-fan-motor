// @hvac/outdoor-fan-motor depends on @hvac/outdoor-fan.
// The fan is a member of this motor: the motor is qualified to that impeller.
import ScalarValues::*;
import OutdoorFan::*;

package OutdoorFanMotor {

port def AcPowerPort;
port def ControlPort;

part def ElectricalSteelStack;
part def CopperWinding;
part def AluminumHousing;

part def MatchedFanMotor {
    port power : AcPowerPort;
    port control : ControlPort;
    port shaft : ShaftPort;
    port airIn : AmbientAirPort;
    port airOut : AmbientAirPort;
    attribute poles : Real = 6;
    attribute ratedPowerW : Real = 60;
    attribute ratedRpm : Real = 850;
    part stator : ElectricalSteelStack;
    part winding : CopperWinding;
    part housing : AluminumHousing;
    part fan : OutdoorAxialFan;
    connect shaft to fan.shaft;
    connect airIn to fan.airIn;
    connect airOut to fan.airOut;
}

}
