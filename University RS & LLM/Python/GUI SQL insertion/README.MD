## **Documentation: Data Insertion GUI with MySQL**

### **Overview**

This Python application creates a graphical user interface (GUI) using `Tkinter` to insert data into a MySQL database. The application allows the user to choose from different tables, enter data for each column, and insert the data into the selected table. It connects to a MySQL server and executes an `INSERT` query based on the user's input.

### **Libraries Used**

- **`tkinter`**: A built-in Python library used for creating the GUI
- **`mysql.connector`**: A Python connector used for interacting with MySQL databases.

### **Application Flow**

1. The user selects a table from a dropdown menu.
2. The user inputs data in various fields (e.g., course ID, course name, etc.).
3. Upon clicking the "Add Data" button, the program constructs an SQL `INSERT` query based on the selected table and user input.
4. The data is inserted into the selected MySQL table.
5. A success message is displayed to inform the user that the data was successfully inserted.

### **Code Explanation**

### 1. **Imports**

```python
python
CopyEdit
import tkinter as tk
import mysql.connector

```

- `tkinter`: Used to create and manage the graphical user interface.
- `mysql.connector`: Used to establish a connection with the MySQL database and execute SQL queries.

### 2. **insert_data Function**

```python
def insert_data():
    ...
```

The function `insert_data()` is responsible for collecting the user's input, constructing an SQL query, and inserting the data into the selected MySQL table.

### 2.1 **Collecting User Input**

The user input is collected from various fields using the `get()` method:

```python
python
CopyEdit
course_id = entry_course_id.get()
dept_id = entry_dept_id.get()
course_name = entry_course_name.get()
course_desc = entry_course_desc.get()
prerequisite_name = entry_prerequisite_name.get()
prerequisite_number = entry_prerequisite_number.get()
requirement_type = entry_requirement_type.get()
number_of_hours = entry_number_of_hours.get()

```

Each input field corresponds to a specific column in the table that the user will insert data into.

### 2.2 **Connecting to the Database**

```python
python
CopyEdit
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Abood12@_",
    database="INU"
)

```

A connection to the MySQL database is established using the `mysql.connector.connect()` method. The connection details (host, user, password, and database) are provided as parameters.

### 2.3 **Constructing the SQL `INSERT` Query**

Based on the selected table, the columns and values are determined dynamically. Here, if the user selects `Cys_dept`, `SE_dept`, or `DS_AI_dept`, the columns and corresponding values are set accordingly:

```python
python
CopyEdit
if table_name == "Cys_dept":
    columns = ["course_id", "dept_id", "course_name", "course_desc", "prerequisite_name", "prerequisite_number", "requirement_type", "number_of_hours"]
    values = (course_id, dept_id, course_name, course_desc, prerequisite_name, prerequisite_number, requirement_type, number_of_hours)

```

The query is then constructed dynamically:

```python
python
CopyEdit
query = f"INSERT INTO {table_name} ({', '.join(columns)}) VALUES ({', '.join(['%s'] * len(values))})"

```

The `INSERT INTO` query is formatted with placeholders (`%s`) for the values, ensuring safe data insertion and preventing SQL injection attacks.

### 2.4 **Executing the Query**

```python
python
CopyEdit
cursor = conn.cursor()
cursor.execute(query, values)

```

A cursor is created using `conn.cursor()`, and the `execute()` method is called to run the query with the provided values.

### 2.5 **Committing Changes**

```python
python
CopyEdit
conn.commit()

```

The `commit()` method is used to apply the changes to the database. Without calling `commit()`, the changes would not be saved.

### 2.6 **Closing the Connection**

```python
python
CopyEdit
conn.close()

```

The connection to the database is closed to free up resources.

### 3. **Creating the GUI**

### 3.1 **Main Window**

```python
python
CopyEdit
root = tk.Tk()
root.title("Add Data to Table")

```

A `Tk` object is created as the main window of the application. The `title()` method sets the window title.

### 3.2 **Dropdown Menu for Table Selection**

```python
python
CopyEdit
table_options = ["Cys_dept", "SE_dept", "DS_AI_dept"]
table_selection = tk.StringVar(root)
table_selection.set(table_options[0])
dropdown_table = tk.OptionMenu(root, table_selection, *table_options)
dropdown_table.pack()

```

A dropdown menu is created for the user to select the table where they want to insert data. The `table_options` list contains the available tables, and `table_selection` holds the currently selected value.

### 3.3 **Input Fields for Data**

For each piece of data, an entry field is created. For example:

```python
python
CopyEdit
label_course_id = tk.Label(root, text="Course ID:")
label_course_id.pack()
entry_course_id = tk.Entry(root)
entry_course_id.pack()

```

These labels and entry fields allow the user to enter data for each column.

### 3.4 **Submit Button**

```python
python
CopyEdit
button_insert = tk.Button(root, text="Add Data", command=insert_data)
button_insert.pack()

```

A button is created to trigger the `insert_data()` function when clicked.

### 3.5 **Success/Error Message**

```python
python
CopyEdit
label_message = tk.Label(root, text="")
label_message.pack()

```

A label is created to display success or error messages after the data insertion.

### 4. **Running the Application**

```python
python
CopyEdit
root.mainloop()

```

The `mainloop()` method is called to run the Tkinter event loop, allowing the GUI to remain open and responsive until the user closes it.

### **Customization Options**

- You can easily extend the functionality by adding more tables and corresponding fields in the `insert_data()` function.
- The connection settings (e.g., `host`, `user`, `password`, `database`) can be customized based on your MySQL server setup.

### **Potential Improvements**

- **Error Handling**: Implement exception handling to gracefully handle errors such as connection issues, invalid input, or SQL query issues.
- **Field Validation**: Add validation to ensure that all input fields contain valid data before attempting to insert it into the database.
- **Clear Fields**: After successful insertion, you can clear the input fields to allow the user to add new data easily.
