# Code Documentation

## Path Setup
```python
path = "Kaggle_dataset"  # Define the path where the dataset is located.
categories = os.listdir(path)  # List all categories (subdirectories) in the specified path.
```
- path: This is the path where the dataset is stored, likely containing subdirectories for each class.
- categories: List of categories (subdirectories) inside the given dataset path.

## Directory Information Function
```python
def dir_info(path):  
    """
    The function accesses each directory and subdirectory to add it into a DataFrame containing:
    - Main directory name
    - Total number of files in all subdirectories
    """
    data = []  # Initialize an empty list to store data.

    for main_folder in os.listdir(path):  # Loop through each main directory.
        main_folder_path = os.path.join(path, main_folder)

        if os.path.isdir(main_folder_path):  # Check if it's a directory.
            total_files = 0  # Initialize counter for total files in subdirectories.

            for sub_folder in os.listdir(main_folder_path):  # Loop through each subdirectory.
                sub_folder_path = os.path.join(main_folder_path, sub_folder)

                if os.path.isdir(sub_folder_path):  # Check if it's a subdirectory.
                    files = [f for f in os.listdir(sub_folder_path) if os.path.isfile(os.path.join(sub_folder_path, f))]  # Get files only.
                    num_files = len(files)  # Count the number of files.
                    total_files += num_files  # Add the count to total.

            # Store the directory information as a dictionary.
            data.append({
                "Main Directory": main_folder,
                "Total Number of Files": total_files
            })

    Category = pd.DataFrame(data)  # Convert list of dictionaries into a DataFrame.
    return Category
```
- dir_info: This function recursively iterates through each directory and subdirectory to count the total number of files in each category and returns the results as a DataFrame.

```python
  def plot(folder):  
    for image_path in folder:  # Iterate through each image path in the folder.
        print(f"Opening image: {image_path}")  # Print the current image path.
        img = Image.open(image_path)  # Open the image using PIL.
        img = img.convert("RGB")  # Convert the image to RGB mode if it's in a different mode (e.g., RGBA).
        
        plt.figure(figsize=(3, 3))  # Set figure size.
        plt.imshow(img)  # Display the image.
        plt.axis('off')  # Hide axes for better visualization.
        plt.show()  # Show the image.
```
- plot: This function opens and plots each image in a given folder using PIL and matplotlib for visualization.


## Data Preprocessing for Machine Learning
### Define Constants
```python
BATCH_SIZE = 32  # Set batch size for training and validation.
IMG_SIZE = (224, 224)  # Set image size for the neural network input.
```
- BATCH_SIZE: Defines the number of images to process in each batch.
- IMG_SIZE: Defines the size of images that will be fed into the model (224x224 pixels).

### Training Dataset & Validation Dataset

```python 
train = image_dataset_from_directory(
    path,  # Path to the directory with images.
    labels='inferred',  # Automatically infers labels from subdirectory names.
    label_mode='categorical',  # Labels are returned as one-hot encoded vectors.
    shuffle=True,  # Shuffle the dataset for randomness.
    batch_size=BATCH_SIZE,  # Set batch size.
    image_size=IMG_SIZE,  # Resize images to the desired input size.
    validation_split=0.2,  # Reserve 20% of the data for validation.
    subset='training',  # Use the training subset.
    seed=42  # Set random seed for reproducibility.
)

validation = image_dataset_from_directory(
    path,  # Path to the directory with images.
    labels='inferred',  # Automatically infers labels from subdirectory names.
    label_mode='categorical',  # Labels are returned as one-hot encoded vectors.
    shuffle=True,  # Shuffle the dataset for randomness.
    batch_size=BATCH_SIZE,  # Set batch size.
    image_size=IMG_SIZE,  # Resize images to the desired input size.
    validation_split=0.2,  # Reserve 20% of the data for validation.
    subset='validation',  # Use the validation subset.
    seed=42  # Set random seed for reproducibility.
)
```
