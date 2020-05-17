Create Trigger copy
After insert on project_detail
For each row
BEGIN
Insert into insertion values(:new.project_id, :new.project_name, :new.description, :new.Revenue_Collection, :new.Cost, :new.dob);
END;
/