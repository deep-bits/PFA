import pandas as pd
data = {'Name': ['Vijay','Raveena','Parul','Paridhi','Pankaj','Sanjay','Aarti','Lokesh','Anukriti','Ankit'], 'Gender': ['M','M','F','F','M','M','F','M','F','M'], 'Marks':[23,64,34,76,34,34,75,34,75,87]}
data = pd.DataFrame(data)
print(data)

data.isna().sum()
avg_marks = data['Marks'].mean()
data['Marks'] = data['Marks'].fillna(avg_marks)
grouped = data.groupby('Gender')
print(grouped)
print(grouped.get_group('M'))
two_df = pd.concat([data,data])
print(two_df)
data['Marks']
data[['Marks','Gender']]

# Read from a CSV file
data = pd.read_csv("Churn_data.csv")
data
data.isna().sum()
avg_age = data['Age'].mean()
data.head()
data.dtypes
data.describe()
data = data.drop("Is_Churn", axis = 1)
senior_citizens_data = data[data.Age > 60]
sort_by_age = data.sort_values('Age',ascending=False)
data1 = sort_by_age[1:3]
data2 = senior_citizens_data[1:3]
merged = pd.merge(data1, data2)

