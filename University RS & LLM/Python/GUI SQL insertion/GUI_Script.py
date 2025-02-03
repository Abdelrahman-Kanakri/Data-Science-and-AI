import tkinter as tk
import mysql.connector


def insert_data():
    # Get the selected table name
    table_name = table_selection.get()

    # Get the values from all input fields
    course_id = entry_course_id.get()
    dept_id = entry_dept_id.get()
    course_name = entry_course_name.get()
    course_desc = entry_course_desc.get()
    prerequisite_name = entry_prerequisite_name.get()
    prerequisite_number = entry_prerequisite_number.get()
    requirement_type = entry_requirement_type.get()
    number_of_hours = entry_number_of_hours.get()

    # Connect to the database
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="Abood12@_",
        database="INU"
    )

    cursor = conn.cursor()

    # Construct the INSERT query based on the selected table
    columns = []
    values = []

    # Handle insertion for Cys_dept table
    if table_name == "Cys_dept":
        columns = ["course_id", "dept_id", "course_name", "course_desc", "prerequisite_name", "prerequisite_number",
                   "requirement_type", "number_of_hours"]
        values = (
            course_id, dept_id, course_name, course_desc, prerequisite_name, prerequisite_number, requirement_type,
            number_of_hours)

    # Handle insertion for SE_dept table
    elif table_name == "SE_dept":
        columns = ["course_id", "dept_id", "course_name", "course_desc", "prerequisite_name", "prerequisite_number",
                   "requirement_type", "number_of_hours"]
        values = (
            course_id, dept_id, course_name, course_desc, prerequisite_name, prerequisite_number, requirement_type,
            number_of_hours)

    # Handle insertion for DS_AI_dept table
    elif table_name == "DS_AI_dept":
        columns = ["course_id", "dept_id", "course_name", "course_desc", "prerequisite_name", "prerequisite_number",
                   "requirement_type", "number_of_hours"]
        values = (
            course_id, dept_id, course_name, course_desc, prerequisite_name, prerequisite_number, requirement_type,
            number_of_hours)

    # You can continue adding more cases for other tables if needed.

    if columns and values:
        # Dynamically create the query with the selected table and column names
        query = f"INSERT INTO {table_name} ({', '.join(columns)}) VALUES ({', '.join(['%s'] * len(values))})"

        cursor.execute(query, values)

    conn.commit()
    conn.close()

    # Show success message
    label_message.config(text=f"Data added to {table_name} successfully!", fg="green")


# Create the main window
root = tk.Tk()
root.title("Add Data to Table")

# Create dropdown for table selection
label_table = tk.Label(root, text="Select Table:")
label_table.pack()

# List of available tables
table_options = ["Cys_dept", "SE_dept", "DS_AI_dept"]  # Add more tables as needed
table_selection = tk.StringVar(root)
table_selection.set(table_options[0])  # Set default selection
dropdown_table = tk.OptionMenu(root, table_selection, *table_options)
dropdown_table.pack()

# Create input fields for each column
label_course_id = tk.Label(root, text="Course ID:")
label_course_id.pack()
entry_course_id = tk.Entry(root)
entry_course_id.pack()

label_dept_id = tk.Label(root, text="Department ID:")
label_dept_id.pack()
entry_dept_id = tk.Entry(root)
entry_dept_id.pack()

label_course_name = tk.Label(root, text="Course Name:")
label_course_name.pack()
entry_course_name = tk.Entry(root)
entry_course_name.pack()

label_course_desc = tk.Label(root, text="Course Description:")
label_course_desc.pack()
entry_course_desc = tk.Entry(root)
entry_course_desc.pack()

label_prerequisite_name = tk.Label(root, text="Prerequisite Name:")
label_prerequisite_name.pack()
entry_prerequisite_name = tk.Entry(root)
entry_prerequisite_name.pack()

label_prerequisite_number = tk.Label(root, text="Prerequisite Number:")
label_prerequisite_number.pack()
entry_prerequisite_number = tk.Entry(root)
entry_prerequisite_number.pack()

label_requirement_type = tk.Label(root, text="Requirement Type:")
label_requirement_type.pack()
entry_requirement_type = tk.Entry(root)
entry_requirement_type.pack()

label_number_of_hours = tk.Label(root, text="Number of Hours:")
label_number_of_hours.pack()
entry_number_of_hours = tk.Entry(root)
entry_number_of_hours.pack()

# Button to insert data
button_insert = tk.Button(root, text="Add Data", command=insert_data)
button_insert.pack()

# Label for success/error message
label_message = tk.Label(root, text="")
label_message.pack()

# Run the application
root.mainloop()
