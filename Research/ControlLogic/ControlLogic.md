# Control logic

Fuzzy Control Logic

## Controller Design

    Decomposing the large-scale system into a collection of various subsystems.
    Varying the plant dynamics slowly and linearizing the nonlinear plane dynamics about a set of operating points.
    Organizing a set of state variables, control variables, or output features for the system under consideration.
    4. Designing simple P, PD, PID controllers for the subsystems. Optimal controllers can also be designed.

### Fuzzy Rules for Controller

In designing a fuzzy logic controller, the process of forming fuzzy rules plays a vital role. There are four structures of the fuzzy production rule system (Weiss and Donnel, 1979) which are as follows:

    A set of rules that represents the policies and heuristic strategies of the expert decision-maker.
    A set of input data that are assessed immediately prior to the actual decision.
    A method for evaluating any proposed action in terms of its conformity to the expressed rules when there is available data.
    A method for generating promising actions and determining when to stop searching for better ones.

### Creating Fuzzy Controller

The various steps involved in designing a fuzzy logic controller are as follows:

    Step 1: Locate the input, output, and state variables of the plane under consideration. I
    Step 2: Split the complete universe of discourse spanned by each variable into a number of fuzzy subsets, assigning each with a linguistic label. The subsets include all the elements in the universe.
    Step 3: Obtain the membership function for each fuzzy subset.
    Step 4: Assign the fuzzy relationships between the inputs or states of fuzzy subsets on one side and the output of fuzzy subsets on the other side, thereby forming the rule base.
    Step 5: Choose appropriate scaling factors for the input and output variables for normalizing the variables between [0, 1] and [-1, I] interval.
    Step 6: Carry out the fuzzification process.
    Step 7: Identify the output contributed from each rule using fuzzy approximate reasoning.
    Step 8: Combine the fuzzy outputs obtained from each rule.
    Step 9: Finally, apply defuzzification to form a crisp output.

The above steps are performed and executed for a simple FLC system. The following design elements are adopted for designing a general FLC system:

    Fuzzification strategies and the interpretation of a fuzzifier.
    Fuzzy knowledge base: Normalization of the parameters involved; partitioning of input and output spaces; selection of membership functions of a primary fuzzy set.
    Fuzzy rule base: Selection of input and output variables; the source from which fuzzy control rules are to be derived; types of fuzzy control rules; completeness of fuzzy control rules.
    Decision· making logic: The proper definition of fuzzy implication; interpretation of connective “and”; interpretation of connective “or”; inference engine.
    Defuzzification materials and the interpretation of a defuzzifier.
