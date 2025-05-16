# Home_Sales_Predictor
Authors: Jeff Gielniak, Hussain Gardezi, Christian Ramos, Andy Jobe
Date: 2025-05-19
https://www.kaggle.com/datasets/ahmedshahriarsakib/usa-real-estate-dataset

The project goal was to build a model with 75% accuracy.  We chose to attempt to predict home sales price based off of the home attributes.  The dataset we found on Kaggle was massive, and therefore difficult to work with, so we took a small sample of the data to build our models.  

Our first model was a simple linear regression attempting to predict sales price based solely on the size of the house (square footage)
<img width="703" alt="Screenshot 2025-05-15 at 9 53 16 AM" src="https://github.com/user-attachments/assets/5f4394a5-5d54-47c7-aa67-467aaf57367c" />
As you can see in the visual, this model did not have a high correlation and only resulted in an R-squared value of 0.35

We attempted to add attributes like number of bedrooms, number of bathrooms, and lot size with the hopes that this additional info would increase our model's efficiency. Unfortunately, the opposite happened, and the model's accuracy fell to 18%.  The larger data actually introduced more variation and hurt the model.  Our theory was that the data across all U.S. markets was too broad and thus could not be used to predict an outcome with high accuracy.  We needed more concentrated data.

Thus, we sorted our data only for a singular state.  We attempted to pick a state with not much variation between the highest home prices and the lowest home prices (in our minds).  
We created a dataset based only on home sales from the state of Iowa.  Again, using the four variables to predict sales, our model accuracy increased to 60%!
<img width="904" alt="Screenshot 2025-05-15 at 10 42 59 AM" src="https://github.com/user-attachments/assets/42b39514-2077-47e0-b9c2-2a86dc94452c" />

Finally, we attempted to fine-tune the data even further, picking only a single city to focus on - Omaha, Nebraska
The accuracy of our initial model decreased back down to 46%, but it was only based on 116 rows of data.  We went back to the original dataset and took all instances of Omaha home sales (1155 data points) and re-ran our model.  This boosted our model accuracy up to 71%!
<img width="896" alt="Screenshot 2025-05-15 at 10 43 21 AM" src="https://github.com/user-attachments/assets/df00f603-89ed-4ea7-8093-d239150e3961" />

To further improve accuracy, we theorize that we would need additional information about the home sales that is difficult to come by, like 'year the home was built', 'school district rating' and someway to quantify location.  
