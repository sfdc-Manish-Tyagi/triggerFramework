# Each object which ever need to use trigger must be implemented in a custom setting/Custom Metadata that allows the trigger to be active/inactive from UI.

# 1# Framework with Interface Control via Custom Setting

![image](https://user-images.githubusercontent.com/56535937/204997306-d645697d-aed7-4cf5-828d-769795cfe1dc.png)


![image](https://user-images.githubusercontent.com/56535937/204997109-d5b8d32d-3796-42a4-a734-c77ceb9fa063.png)

![image](https://user-images.githubusercontent.com/56535937/204997024-58e3d44b-75c7-4da2-b361-1d27ba312341.png)

# 2# Framework with Interface and Helper Control via Custom Metadata

![image](https://user-images.githubusercontent.com/56535937/205012272-2bb48a6b-f2e7-4621-9e88-acd48dbdadf5.png)

![image](https://user-images.githubusercontent.com/56535937/205012365-f6649921-e973-49e8-ae4c-75f3d3a1f5c6.png)

# 3# Framework with only TriggerHandler virtual base class
# Benefits:
. Simple and easy to implement.
. Doesn’t require implementing an interface for every trigger handler with lots of empty methods as seen in some trigger frameworks. Remember folks that an abstract or virtual class is another way of “Programming to an Interface”.
. Handles the dispatching to the correct event method. This removes the spaghetti code found in many triggers.
. Provides a base implementation that can be extended to add other features such as “Centralized Logging”, “Feature Toggling”, and “Recursion Management” within the  Trigger Handler Base.

# Limitations
Not sophisticated. There are other trigger frameworks that provide a lot more functionality and extensibility but are heavier to implement.

![image](https://user-images.githubusercontent.com/56535937/205292535-d5a791df-df82-4523-ac5b-b417e9494a22.png)

# 4# Framework with only TriggerHandler virtual base class controlled by Custom Metadata Type
![image](https://user-images.githubusercontent.com/56535937/205299703-f0c4964b-a9df-4fa3-ab12-53c70ac7524f.png)

![image](https://user-images.githubusercontent.com/56535937/205319894-6a6d7f41-385f-4624-bc8f-585774b7c42a.png)



