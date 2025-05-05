# V amd V

Examplificaiton of Safety approach for autonomous behaviour for aircrafts.

Verifying and validating autonomous behaviour for their safety during execution.

## V&V Challenges in IA Systems

### Correct response to an incorrect command

 In several tasks, the co-pilot is expected to query
the pilot or ATC if there is an unexpected command. The query should explain why the com-
mand is unexpected, informing the pilot of the system’s understanding of the situation. Off
hand, we don’t know how often the command is in error or the system is misreading the aircraft
state or environment. For an IA system, a simple override, to do as originally instructed, may
not be sufficient. The system would be left in an uncertain state, performing actions that do not
follow from the synthesis of data it is taking in.

#### Dynamic Decision about keeping the pilot informed but not overloaded

of cockpit systems involves an exhaustive study of pilot interaction. How much information is
enough/too much? At what point is an alert a distraction making an appropriate response more
difficult? An IA system may need to decide in the moment what information is most needed or
distracting. What if it replaces data the pilot needs with information it thinks is relevant.

##### Parameters for continuing operation when failures occur

Sensor loss or mechanical malfunction that can be handled safely by experienced pilots would leave an IA system operating out-
side traditional safety envelopes. An IA system needs to make a best effort, may be with
reduced confidence, rather than drop everything on the pilot. The verification challenge lies in
the sheer number of sensors and subsystems that may fail in any number of combinations as
well as the calculation and communication of confidence in the situational awareness given loss
of information or control.

###### Result

To support such autonomous behaviors and decision making capabilities, IA systems will employ un-
conventional implementation techniques such as machine learning.

TODO: Example of autonomous flying partly applicable. There to provoke thoughts 