-- CLEANING THE DATA
-- REPLACE FROM EMPTY TO UNSPECIFIED for accident severity
UPDATE dataset_traffic_accident_prediction1
SET Accident_Severity = 'Unspecified'
WHERE Accident_Severity = '';
-- REPLACE FROM EMPTY TO NOT DETERMIND for the road condition
UPDATE dataset_traffic_accident_prediction1
SET Road_Condition = 'Not Determind'
WHERE Road_Condition = '';
-- REPLACE FROM EMPTY TO O for traffic density
UPDATE dataset_traffic_accident_prediction1
SET Traffic_Density = 0
WHERE Traffic_Density = '';
-- REPLACING THE TYPE OF VEHICLE FROM EMPTY TO UNKNOWN
UPDATE dataset_traffic_accident_prediction1
SET Vehicle_Type = 'Unknown'
WHERE Vehicle_Type = '';
-- REPLACING THE ROAD LIGHT CONDITION FROM EMPTY TO UNKNOWN
UPDATE dataset_traffic_accident_prediction1
SET Road_Light_Condition = 'Unknown'
WHERE Road_Light_Condition = '';

-- REPLACING THE BLANK WEATHER TO UNKNOWN
UPDATE dataset_traffic_accident_prediction1
SET Weather = 'Unknown'
WHERE Weather = '';
-- REPLACING THE ROAD_TYPE TO NOT DETERMINED FROM EMTPY
UPDATE dataset_traffic_accident_prediction1
SET Road_Type = 'Not Determined'
WHERE Road_Type = '';
-- REPLACING THE TIME OF DAY TO UNKNOWN FROM EMPTY TIME OF DAY DATA
UPDATE dataset_traffic_accident_prediction1
SET Time_of_Day = 'Unknown'
WHERE Time_of_Day = '';

-- CONFIRMING THE CLEAN DATA IS ALL SET
SELECT * FROM dataset_traffic_accident_prediction1




